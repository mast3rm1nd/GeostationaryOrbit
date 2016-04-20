using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace GeostationaryOrbit
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        static double PI = Math.PI;

        static double EarthMass = 5.97219 * Math.Pow(10, 24);
        static double G = 6.6740831 * Math.Pow(10, -11);

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Calculate_button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var starDayLength = double.Parse(StarDayDuration_textBox.Text.Replace('.', ','));
                var bodyMass = double.Parse(BodyMass_textBox.Text.Replace('.', ','));

                if(starDayLength <= 0 || bodyMass <= 0)
                {
                    WrongData();

                    return;
                }

                var w_AngleSpeed = (2 * PI) / starDayLength;
                var mu_GravitationalParameter = (EarthMass * bodyMass) * G;
                var R_orbitRadius = Math.Pow(mu_GravitationalParameter / Math.Pow(w_AngleSpeed, 2),
                    1 / 3.0);
                var V_orbitalSpeed = w_AngleSpeed * R_orbitRadius;
                var L_orbitLength = 2 * PI * R_orbitRadius;

                var results = "";
                results += $"Угловая скорость:         {w_AngleSpeed:0.0#E+0} [рад/с]" + Environment.NewLine;
                results += $"Гравитационный параметр:  {mu_GravitationalParameter / Math.Pow(10, 9):N2} [км^3*с^−2]" + Environment.NewLine;
                results += $"Радиус орбиты:            {R_orbitRadius / 1000:N2} [км]" + Environment.NewLine;
                results += $"Орбитальная скорость:     {V_orbitalSpeed / 1000:N2} [км/с]" + Environment.NewLine;
                results += $"Длина орбиты:             {L_orbitLength / 1000:N2} [км]" + Environment.NewLine;

                Results_textBox.Text = results;
            }
            catch
            {
                WrongData();
            }
        }

        void WrongData()
        {
            Results_textBox.Text = "Проверьте правильность введённых данных.";
        }
    }
}
