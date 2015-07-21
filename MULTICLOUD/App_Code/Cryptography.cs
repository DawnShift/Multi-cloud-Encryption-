using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text;
using System.Security.Cryptography;
using System.IO;

/// <summary>
/// Summary description for Cryptography
/// </summary>
public class Cryptography
{
    //public static RSACryptoServiceProvider rsa;

   

	public Cryptography()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string Encrypt(string sPainText,string sattribute)
    {
        if (sPainText.Length == 0)
            return (sPainText);
        return (EncryptString(sPainText, sattribute));
    }

    public string Decrypt(string sEncryptText, string sKey)
    {
        if (sEncryptText.Length == 0)
            return (sEncryptText);
        return (DecryptString(sEncryptText, sKey));
    }
   
    protected string EncryptString(string InputText, string attribute)
    {
        
        RijndaelManaged RijndaelCipher = new RijndaelManaged();
        byte[] PlainText = System.Text.Encoding.Unicode.GetBytes(InputText);        
        byte[] Salt = Encoding.ASCII.GetBytes(attribute.Length.ToString());        
        PasswordDeriveBytes SecretKey = new PasswordDeriveBytes(attribute, Salt);        
        ICryptoTransform Encryptor = RijndaelCipher.CreateEncryptor(SecretKey.GetBytes(16), SecretKey.GetBytes(16));
        MemoryStream memoryStream = new MemoryStream();        
        CryptoStream cryptoStream = new CryptoStream(memoryStream, Encryptor, CryptoStreamMode.Write);
        
        cryptoStream.Write(PlainText, 0, PlainText.Length);
       
        cryptoStream.FlushFinalBlock();
       
        byte[] CipherBytes = memoryStream.ToArray();
        
        memoryStream.Close();
        cryptoStream.Close();
       
        string EncryptedData = Convert.ToBase64String(CipherBytes);
        
        return EncryptedData;
    }

    protected string DecryptString(string InputText, string Password)
    {
        try
        {
            RijndaelManaged RijndaelCipher = new RijndaelManaged();
            byte[] EncryptedData = Convert.FromBase64String(InputText);
            byte[] Salt = Encoding.ASCII.GetBytes(Password.Length.ToString());
            PasswordDeriveBytes SecretKey = new PasswordDeriveBytes(Password, Salt);
            // Create a decryptor from the existing SecretKey bytes.
            ICryptoTransform Decryptor = RijndaelCipher.CreateDecryptor(SecretKey.GetBytes(16), SecretKey.GetBytes(16));
            MemoryStream memoryStream = new MemoryStream(EncryptedData);
            // Create a CryptoStream. (always use Read mode for decryption).
            CryptoStream cryptoStream = new CryptoStream(memoryStream, Decryptor, CryptoStreamMode.Read);
            // Since at this point we don't know what the size of decrypted data
            // will be, allocate the buffer long enough to hold EncryptedData;
            // DecryptedData is never longer than EncryptedData.
            byte[] PlainText = new byte[EncryptedData.Length];
            // Start decrypting.
            int DecryptedCount = cryptoStream.Read(PlainText, 0, PlainText.Length);
            memoryStream.Close();
            cryptoStream.Close();
            // Convert decrypted data into a string.
            string DecryptedData = Encoding.Unicode.GetString(PlainText, 0, DecryptedCount);
            // Return decrypted string.
            return DecryptedData;
        }
        catch (Exception exception)
        {
            return (exception.Message);
        }
    }

}
