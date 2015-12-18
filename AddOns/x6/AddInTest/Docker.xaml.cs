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


using C = Corel.Interop.CorelDRAW;
using Corel.Interop.VGCore;


    /// <summary>
    /// Interaction logic for Docker.xaml
    /// </summary>
    public partial class Docker : UserControl
    {
        private C.Application cApp { get; set; }

        public Docker(object app)
        {
            InitializeComponent();

            //MessageBox.Show("starting up?");

            //foreach (CommandBarControl c in cApp.FrameWork.CommandBars["Dockers"].Controls)
            //{
            //    //if (c.Id == "")
            //    //{

            //    //}

                
            //}

            cApp = app as C.Application;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("test msg from a wpf docker");
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("test msg from a wpf docker");
        }
    }

