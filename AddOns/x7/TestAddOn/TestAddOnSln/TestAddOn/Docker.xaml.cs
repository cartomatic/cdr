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

namespace TestAddOn
{
    /// <summary>
    /// Interaction logic for Docker.xaml
    /// </summary>
    public partial class Docker : UserControl
    {
        protected Corel.Interop.CorelDRAW.Application cdrApp = null;

        public Docker()
        {
            InitializeComponent();
        }

        public Docker(object app)
        {
            InitializeComponent();

            cdrApp = (Corel.Interop.CorelDRAW.Application)app;

            //An example of wiring up evt listeners
            //
            //Note:
            //This will not work
            //cdrApp.SelectionChange += new Corel.Interop.VGCore.DIVGApplicationEvents_SelectionChangeEventHandler(cdrApp_SelectionChange);
            //cdrApp.SelectionChange += new Corel.Interop.CorelDRAW.DIVGApplicationEvents_SelectionChangeEventHandler(cdrApp_SelectionChange);
            //
            //Corel.Interop.VGCore.DIVGApplicationEvents_Event.SelectionChange conflicts with the Corel.Interop.CorelDRAW.DIVGApplicationEvents_Event.SelectionChange
            //so in order to wire up the listeners, need to cast the app to vgcore app
            ((Corel.Interop.VGCore.Application)cdrApp).SelectionChange += new Corel.Interop.VGCore.DIVGApplicationEvents_SelectionChangeEventHandler(cdrApp_SelectionChange);

        }

        private void cdrApp_SelectionChange()
        {
            //do nothing
            System.Windows.MessageBox.Show("Selection changed");
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.MessageBox.Show("Clicked!");
        }

    }
}
