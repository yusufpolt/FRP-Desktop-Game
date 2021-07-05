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
    public class GameStorySettingsConcrete : IDatabaseRepository<GameStory>
    {
        public void Delete(GameStory entity)
        {
            using(var db=new FrpDatabaseEntities())
            {
                db.GameStory.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }

        public void Delete(int id)
        {
            using (var db = new FrpDatabaseEntities())
            {
                var entity = GetById(id);
                db.GameStory.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Deleted;
                db.SaveChanges();
            }
        }

        public GameStory Get(Expression<Func<GameStory, bool>> expression)
        {
            using(var db=new FrpDatabaseEntities())
            {
                return db.GameStory.Where(expression).FirstOrDefault();
            }
        }

        public List<GameStory> GetAll()
        {
            using (var db = new FrpDatabaseEntities())
            {
                return db.GameStory.ToList();
            }
        }

        public List<GameStory> GetAll(Expression<Func<GameStory, bool>> expression)
        {
            using (var db = new FrpDatabaseEntities())
            {
                return db.GameStory.Where(expression).ToList();
            }
        }

        public GameStory GetById(int id)
        {
            using (var db = new FrpDatabaseEntities())
            {
                return db.GameStory.Find(id);
            }
        }

        public void Insert(GameStory entity)
        {
            using (var db = new FrpDatabaseEntities())
            {
                db.GameStory.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Added;
                db.SaveChanges();
            }
        }

        public void Update(GameStory entity)
        {
            using (var db = new FrpDatabaseEntities())
            {
                db.GameStory.Attach(entity);
                db.Entry(entity).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }
    }
}
