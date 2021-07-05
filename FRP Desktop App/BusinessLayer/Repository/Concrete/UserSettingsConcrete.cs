using BusinessLayer.Repository.Abstract;
using DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Repository.Concrete
{
    public class UserSettingsConcrete : IDatabaseRepository<UserRegister>
    {
        public void Delete(UserRegister entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public UserRegister Get(Expression<Func<UserRegister, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public List<UserRegister> GetAll()
        {
            using(var db=new FrpDatabaseEntities())
            {
                return db.UserRegister.ToList();
            }
        }

        public List<UserRegister> GetAll(Expression<Func<UserRegister, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public UserRegister GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(UserRegister entity)
        {
            throw new NotImplementedException();
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
    }
}
