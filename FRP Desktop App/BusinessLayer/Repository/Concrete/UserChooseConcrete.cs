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
    public class UserChooseConcrete : IDatabaseRepository<UserChoose>
    {
        public void Delete(UserChoose entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public UserChoose Get(Expression<Func<UserChoose, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public List<UserChoose> GetAll()
        {
            throw new NotImplementedException();
        }

        public List<UserChoose> GetAll(Expression<Func<UserChoose, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public UserChoose GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(UserChoose entity)
        {
            using (var db = new FrpDatabaseEntities())
            {
                db.UserChoose.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
            }
        }

        public void Update(UserChoose entity)
        {
            using(var db=new FrpDatabaseEntities())
            {
                db.UserChoose.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }
    }
}
