using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Profile;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

namespace JAOBlogEngine.Models
{
    public class ProfileModel
    {
        private ProfileBase profile = null;

        public ProfileModel(string username)
        {
            profile = ProfileBase.Create(username);
        }

        [DisplayName("Пользователь")]
        public string UserName
        {
            get
            {
                if (profile == null) return string.Empty;
                else return profile[Constants.PROFILE_USER_NAME] as string;
            }
            set { if (profile != null) { profile[Constants.PROFILE_USER_NAME] = value; } }
        }

        [DisplayName("Email")]
        public string Email
        {
            get
            {
                if (profile == null) return string.Empty;
                else return profile[Constants.PROFILE_EMAIL] as string;
            }
            set { if (profile != null) { profile[Constants.PROFILE_EMAIL] = value; } }
        }

        [DisplayName("Телефон")]
        public string Telephone
        {
            get
            {
                if (profile == null) return string.Empty;
                else return profile[Constants.PROFILE_TELEPHONE] as string;
            }
            set { if (profile != null) { profile[Constants.PROFILE_TELEPHONE] = value; } }
        }

        [DisplayName("Адрес")]
        public string Address
        {
            get
            {
                if (profile == null) return string.Empty;
                else return profile[Constants.PROFILE_ADDRESS] as string;
            }
            set { if (profile != null) { profile[Constants.PROFILE_ADDRESS] = value; } }
        }

        [DisplayName("Комментарий")]
        public string Comment
        {
            get
            {
                if (profile == null) return string.Empty;
                else return profile[Constants.PROFILE_COMMENT] as string;
            }
            set { if (profile != null) { profile[Constants.PROFILE_COMMENT] = value; } }
        }

        public void Save() { if (profile != null)profile.Save(); }

        public byte[] ImageData { get; set; }
        public string ImageMimeType { get; set; }

    }
}