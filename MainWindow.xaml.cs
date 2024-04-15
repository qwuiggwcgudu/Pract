using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ToWindow1Btn_Click(object sender, RoutedEventArgs e)
        {
            Window1 window1 = new();

            window1.Show();
            this.Hide();
        }
        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Environment.Exit(0);
        }

        private void AutBtn_Click(object sender, RoutedEventArgs e)
        {
            var login = LoginBox.Text;
            var pass = PassBox.Text;
            var pass2 = PassBox2.Password;
            var email = LoginBox.Text;
            var context = new AppDbContext();
            var user_exists = context.Users.SingleOrDefault(x => x.Login == login && x.Password == pass || x.email == email && x.Password == pass || x.Login == login && x.Password == pass2 || x.email == email && x.Password == pass2);
            if (user_exists is null)
            {
                tr3.Text = ("Неправильный логин/почта или пароль");
                return;
            }
            Window2 window2 = new Window2(login);
            window2.Show();
            this.Hide();

        }

        private void showBtn_Click(object sender, RoutedEventArgs e)
        {

            if (PassBox2.Visibility == Visibility.Collapsed)
            {
                PassBox2.Password = PassBox.Text;
                PassBox2.Visibility = Visibility.Visible;
                PassBox.Visibility = Visibility.Collapsed;
                image.Source = BitmapFrame.Create(new Uri(@"C:\Users\student\Documents\Новая папка\WpfApp1\а\i.png"));
            }
            else
            {
                PassBox.Text = PassBox2.Password;
                PassBox2.Visibility = Visibility.Collapsed;
                PassBox.Visibility = Visibility.Visible;
                image.Source = BitmapFrame.Create(new Uri(@"C:\Users\student\Documents\Новая папка\WpfApp1\а\k.png"));
            }
        }
    }

}
