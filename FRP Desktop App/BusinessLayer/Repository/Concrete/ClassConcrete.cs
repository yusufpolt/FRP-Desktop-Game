using BusinessLayer.Repository.Abstract;
using DataLayer;
using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Repository.Concrete
{
    public class ClassConcrete : IDatabaseRepository<Class>
    {
        public void Delete(Class entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Class Get(Expression<Func<Class, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public List<Class> GetAll()
        {
            using(var db=new FrpDatabaseEntities())
            {
                var Uclass = db.Class.ToList();
                Uclass.Insert(0, new Class
                {
                    ClassId = 0,
                    ClassName = "Select Class ....."
                });
                return Uclass;
            }
        }

        public List<Class> GetAll(Expression<Func<Class, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public Class GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(Class entity)
        {
            using(var db=new FrpDatabaseEntities())
            {
                db.Class.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
            }
        }

        public void Update(Class entity)
        {
            using (var db = new FrpDatabaseEntities())
            {
                db.Class.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }
    }
}
