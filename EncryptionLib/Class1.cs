using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;

namespace EncryptionLib
{
    public class Class1
    {
        public static String getHash(String rawPassword)
        {
            string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(rawPassword, "SHA1");
            return hashedPassword;
        }
        public static Boolean matchPassword(String rawPassword, String hashedPassword)
        {
            String hashraw = getHash(rawPassword);
            if (hashedPassword.Equals(hashraw))
            {
                return true;
            }
            return false;
        }
    }
}
