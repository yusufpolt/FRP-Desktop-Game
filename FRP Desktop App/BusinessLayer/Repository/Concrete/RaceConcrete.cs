using BusinessLayer.Repository.Abstract;
using DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.Repository.Concrete
{
    public class RaceConcrete : IDatabaseRepository<Race>
    {
        public void Delete(Race entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Race Get(Expression<Func<Race, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public List<Race> GetAll()
        {
            using(var db=new FrpDatabaseEntities())
            {
                var race = db.Race.ToList();
                race.Insert(0, new Race
                {
                    RaceId = 0,
                    RaceName = "Select Race ......"
                });
                return race;
            }
        }

        public List<Race> GetAll(Expression<Func<Race, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public Race GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(Race entity)
        {
            using(var db=new FrpDatabaseEntities())
            {
                db.Race.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
            }
        }

        public void Update(Race entity)
        {
            using (var db = new FrpDatabaseEntities())
            {
                db.Race.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }
    }
}
