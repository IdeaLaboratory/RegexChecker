using System;
using System.Collections.Generic;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace RegexChecker
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();


            InpurStringTB.BorderBrush = Brushes.Red;
        }

        private void checkBtn_Click(object sender, RoutedEventArgs e)
        {
            if (String.IsNullOrEmpty(Convert.ToString(RegexTB.Text)))
            {
                status.Text = "Enter Regex";
                return;
            }
            if (String.IsNullOrEmpty(InpurStringTB.Text))
            {
                status.Text = "Input string";
                return;
            }
            //.Replace('\\', '\')
            if (IsRegexPatternValid(RegexTB.Text))
            {
                Regex regX = new Regex(RegexTB.Text);
                bool IsValidString = regX.IsMatch(InpurStringTB.Text);
                if (IsValidString)
                {
                    status.Text = "True";
                    status.Background = Brushes.LightGreen;
                }
                else
                {
                    status.Text = "False";
                    status.Background = Brushes.LightCyan;
                }
                //MessageBox.Show(IsValidString.ToString());
            }
            else
            {
                status.Text = "Invalid regex pattern";
                status.Background = Brushes.LightGoldenrodYellow;
            }

        }

        private bool IsRegexPatternValid(String pattern)
        {
            try
            {
                new Regex(pattern);
                return true;
            }
            catch { }
            return false;
        }
    }
}
