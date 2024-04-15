using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using static System.Net.Mime.MediaTypeNames;

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
            redline1.Visibility = Visibility.Hidden;
            redline2.Visibility = Visibility.Hidden;
            redline3.Visibility = Visibility.Hidden;
        }
        public void RemoveText(object sender, EventArgs e)
        {
            LoginBoxPH.Visibility = Visibility.Hidden;
        }
        public void AddText(object sender, EventArgs e)
        {
            if (LoginBox.Text == "")
            {
                LoginBoxPH.Visibility = Visibility.Visible;
            }
            else
            {
                LoginBoxPH.Visibility = Visibility.Hidden;
            }
        }
        public void RemoveText1(object sender, EventArgs e)
        {
            emailBoxPH.Visibility = Visibility.Hidden;
        }
        public void AddText1(object sender, EventArgs e)
        {
            if (emailBox.Text == "")
            {
                emailBoxPH.Visibility = Visibility.Visible;
            }
            else
            {
                emailBoxPH.Visibility = Visibility.Hidden;
            }
        }
        public void RemoveText2(object sender, EventArgs e)
        {
            passBoxPH.Visibility = Visibility.Hidden;
        }
        public void AddText2(object sender, EventArgs e)
        {
            if (passBox.Text == "")
            {
                passBoxPH.Visibility = Visibility.Visible;
            }
            else
            {
                passBoxPH.Visibility = Visibility.Hidden;
            }
        }
        public void RemoveText3(object sender, EventArgs e)
        {
            passBoxPH.Visibility = Visibility.Hidden;
        }
        public void AddText3(object sender, EventArgs e)
        {
            if (passbox2.Text == "")
            {
                passpBoxPH.Visibility = Visibility.Visible;
            }
            else
            {
                passpBoxPH.Visibility = Visibility.Hidden;
            }
        }
        private void ToWindow1Btn_Click(object sender, RoutedEventArgs e)
        {
            MainWindow MainWindow = new();

            MainWindow.Show();
            this.Hide();
        }
        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Environment.Exit(0);
        }

        private void RegBtn_Click(object sender, RoutedEventArgs e)
        {
            var login = LoginBox.Text;
            var pass = passBox.Text;
            var pass2 = passbox2.Text;
            passbox2.Text = redline3.Text;
            var regex1 = new Regex(@"([a-zA-Z])");
            var regex2 = new Regex(@"([0-9])");
            var regex3 = new Regex(@"([!,@,#,$,%,^,&,*,?,_,-])");
            var email = emailBox.Text;
            string k = "@";
            var context = new AppDbContext();
            var user_exists = context.Users.FirstOrDefault(x => x.Login == login);
            if (user_exists is not null)
            {
                return;
            }
            email = redline1.Text;
            if (email == "")
            {
                email = emailBox.Text;
            }
            if (!email.Any(x => k.Contains(x)))
            {
                redline1.Visibility = Visibility.Visible;
                redline1.Text = email;
                tb1.Text = ("Некоректный адрес");
                return;
            }
            else
            {
                redline1.Visibility = Visibility.Hidden;
                redline1.Clear();
                emailBox.Text = email;
                tb1.Clear();
            }
            pass = redline2.Text;
            if (pass == "")
            {
                pass = passBox.Text;
            }
            if (pass.Length <= 7)
            {
                redline2.Visibility = Visibility.Visible;
                redline2.Text = pass;
                tb2.Text = ("Слишком короткий пароль");
                return;
            }
            else
            {
                redline2.Visibility = Visibility.Hidden;
                passBox.Text = pass;
                tb2.Clear();
            }
            if (!regex1.IsMatch(pass))
            {
                redline2.Visibility = Visibility.Visible;
                redline2.Text = pass;
                tb2.Text = ("Добавьте строчные или прописные буквы");
                return;
            }
            else
            {
                redline2.Visibility = Visibility.Hidden;
                passBox.Text = pass;
                tb2.Clear();
            }
            if (!regex2.IsMatch(pass))
            {
                redline2.Visibility = Visibility.Visible;
                redline2.Text = pass;
                tb2.Text = ("Добавьте цифры");
                return;
            }
            else
            {
                redline2.Visibility = Visibility.Hidden;
                passBox.Text = pass;
                tb2.Clear();
            }
            if (!regex3.IsMatch(pass))
            {
                redline2.Visibility = Visibility.Visible;
                redline2.Text = pass;
                tb2.Text = ("Добавьте специальные символы");
                return;
            }
            else
            {
                redline2.Visibility = Visibility.Hidden;
                passBox.Text = pass;
                tb2.Clear();
            }
            if (pass != pass2)
            {
                redline2.Visibility = Visibility.Visible;
                redline3.Visibility = Visibility.Visible;
                redline2.Text = passBox.Text;
                redline3.Text = passbox2.Text;
                tb2.Text = ("Пароли не совпадают");
                return;
            }
            else
            {
                redline2.Visibility = Visibility.Hidden;
                redline3.Visibility = Visibility.Hidden;
                passBox.Text = pass;
                passbox2.Text = pass2;
                tb2.Clear();
            }
            var user = new User { Login = login, Password = pass, email = email };
            context.Users.Add(user);
            context.SaveChanges();
            MainWindow mainWindow = new();

            mainWindow.Show();
            this.Hide();
        }
    }
}