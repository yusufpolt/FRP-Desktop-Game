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
    public class CountyConcrete : IDatabaseRepository<Counties>
    {
        public void Delete(Counties entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

        public Counties Get(Expression<Func<Counties, bool>> expression)
        {
            throw new NotImplementedException();
        }

        public List<Counties> GetAll()
        {
            throw new NotImplementedException();
        }

        public List<Counties> GetAll(Expression<Func<Counties, bool>> expression)
        {
            using (var db = new FrpDatabaseEntities())
            {
                var counties = db.Counties.Where(expression).ToList();
                counties.Insert(0, new Counties { CountyId = 0, County = "Select..." });
                return counties;
            }
        }

        public Counties GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Insert(Counties entity)
        {
            throw new NotImplementedException();
        }

        public void Update(Counties entity)
        {
            throw new NotImplementedException();
        }
    }
}
