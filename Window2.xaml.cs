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
using System.Windows.Shapes;

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для Window2.xaml
    /// </summary>
    public partial class Window2 : Window
    {
        public Window2()
        {
            InitializeComponent();
        }
        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            Environment.Exit(0);
        }
        private string f;
        public Window2(string login)
        {
            InitializeComponent();
            f = login;
            H.Text = "Здравствуйте," + " " + f;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            Window3 window3 = new();
            window3.Show();
            this.Hide();
        }
    }
}
