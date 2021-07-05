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
    public class ContactConcrete : IDatabaseRepository<Contact>
    {
        public void Delete(Contact entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Contact Get(Expression<Func<Contact, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public List<Contact> GetAll()
        {
            throw new NotImplementedException();
        }

        public List<Contact> GetAll(Expression<Func<Contact, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public Contact GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(Contact entity)
        {
            using(var db=new FrpDatabaseEntities())
            {
                db.Contact.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
            }
        }

        public void Update(Contact entity)
        {
            throw new NotImplementedException();
        }
    }
}
