using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer
{
    public class UserViewModel
    {
        public UserRegister User { get; set; }
        public List<UserInRoles> UserRoles { get; set; }
        public List<RolesForms> RolesForm { get; set; }
    }
}
