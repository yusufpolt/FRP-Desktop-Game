using BusinessLayer.Repository.Abstract;
using DataLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Repository.Concrete
{
    public class UserRegisterConcrete : IDatabaseRepository<UserRegister>
    {
        public void Delete(UserRegister entity)
        {
            using (var db = new FrpDatabaseEntities()) 
            {
                db.UserRegister.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }

        public void Delete(int id)
        {
            using (var db = new FrpDatabaseEntities())
            {
                var entity = GetById(id);
                db.UserRegister.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }

        public UserRegister Get(Expression<Func<UserRegister, bool>> expression)
        {
            using (var db = new FrpDatabaseEntities())
            {
               return db.UserRegister.Where(expression).FirstOrDefault();               
            }
        }

        public List<UserRegister> GetAll()
        {
            using (var db = new FrpDatabaseEntities())
            {
                return db.UserRegister.ToList();
            }
        }

        public List<UserRegister> GetAll(Expression<Func<UserRegister, bool>> expression)
        {
            using (var db = new FrpDatabaseEntities())
            {
                return db.UserRegister.Where(expression).ToList();
            }
        }

        public UserRegister GetById(int id)
        {
            using (var db = new FrpDatabaseEntities())
            {
                return db.UserRegister.Find(id);
            }
        }

        public void Insert(UserRegister entity)
        {
            using (var db = new FrpDatabaseEntities())
            {
                db.UserRegister.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
            }
        }

        public void Update(UserRegister entity)
        {
            using (var db = new FrpDatabaseEntities())
            {
                db.UserRegister.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }

        public UserViewModel GetUser(string username, string userpassword)
        {
            using (var db = new FrpDatabaseEntities())
            {
                var user = db.UserRegister.Where(u => u.UserName == username && u.UserPassword == userpassword).FirstOrDefault();

                var roles = db.UserInRoles.Where(r => r.UserId == user.UserId).ToList();

                var rolesForms = new List<RolesForms>();

                foreach (var role in roles)
                {
                    var form = db.RolesForms.Where(f => f.RoleId == role.RoleId).FirstOrDefault();
                    rolesForms.Add(form);
                }

                var userViewModel = new UserViewModel
                {
                    User = user,
                    UserRoles = roles,
                    RolesForm = rolesForms
                };
                return userViewModel;
            }

        }

        public int Get(string username, string userpassword)
        {
            using (var connection = new SqlConnection(@"Data Source=DESKTOP-5CLSQNT\SQLEXPRESS; Initial Catalog=FrpDatabase; Integrated Security=true;"))
            {

                if (connection.State == ConnectionState.Closed)
                    connection.Open();
                using (var command = new SqlCommand("Sp_CheckUser", connection))
                {
                    command.Parameters.AddWithValue("@UserName", username);
                    command.Parameters.AddWithValue("@UserPassword", userpassword);
                    var returnValue = new SqlParameter();
                    returnValue.ParameterName = "@ReturnValue";
                    returnValue.SqlDbType = SqlDbType.Int;
                    returnValue.Direction = ParameterDirection.ReturnValue;
                    command.Parameters.Add(returnValue);
                    command.CommandType = CommandType.StoredProcedure;
                    command.ExecuteNonQuery();
                    return Convert.ToInt32(value: returnValue.Value);
                }               
            }
        }
    }
}
