#pragma checksum "..\..\..\Pages\AddEditProductPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "5A0BD3833986607604C6A6828BE09B86CBDFAC0FCA2A60F583C8F1CEBFD1E9F5"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using SessiaApp.Classes;
using SessiaApp.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SessiaApp.Pages {
    
    
    /// <summary>
    /// AddEditProductPage
    /// </summary>
    public partial class AddEditProductPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 18 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ProductNametb;
        
        #line default
        #line hidden
        
        
        #line 28 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Commenttb;
        
        #line default
        #line hidden
        
        
        #line 39 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ProductTypeCB;
        
        #line default
        #line hidden
        
        
        #line 48 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox PriceTB;
        
        #line default
        #line hidden
        
        
        #line 59 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox EmployeeCountTB;
        
        #line default
        #line hidden
        
        
        #line 70 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox WorkshopTB;
        
        #line default
        #line hidden
        
        
        #line 89 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddMaterialBtn;
        
        #line default
        #line hidden
        
        
        #line 92 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Add_Image;
        
        #line default
        #line hidden
        
        
        #line 93 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image productImageButton;
        
        #line default
        #line hidden
        
        
        #line 94 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Savebtn;
        
        #line default
        #line hidden
        
        
        #line 95 "..\..\..\Pages\AddEditProductPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Backbtn;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SessiaApp;component/pages/addeditproductpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\AddEditProductPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.ProductNametb = ((System.Windows.Controls.TextBox)(target));
            return;
            case 2:
            this.Commenttb = ((System.Windows.Controls.TextBox)(target));
            
            #line 35 "..\..\..\Pages\AddEditProductPage.xaml"
            this.Commenttb.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.VarcharPreviewTextInput);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ProductTypeCB = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 4:
            this.PriceTB = ((System.Windows.Controls.TextBox)(target));
            
            #line 55 "..\..\..\Pages\AddEditProductPage.xaml"
            this.PriceTB.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.IntPreviewTextInput);
            
            #line default
            #line hidden
            return;
            case 5:
            this.EmployeeCountTB = ((System.Windows.Controls.TextBox)(target));
            
            #line 66 "..\..\..\Pages\AddEditProductPage.xaml"
            this.EmployeeCountTB.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.IntPreviewTextInput);
            
            #line default
            #line hidden
            return;
            case 6:
            this.WorkshopTB = ((System.Windows.Controls.TextBox)(target));
            
            #line 77 "..\..\..\Pages\AddEditProductPage.xaml"
            this.WorkshopTB.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.IntPreviewTextInput);
            
            #line default
            #line hidden
            return;
            case 7:
            this.AddMaterialBtn = ((System.Windows.Controls.Button)(target));
            
            #line 89 "..\..\..\Pages\AddEditProductPage.xaml"
            this.AddMaterialBtn.Click += new System.Windows.RoutedEventHandler(this.AddMaterialBtn_Click);
            
            #line default
            #line hidden
            return;
            case 8:
            this.Add_Image = ((System.Windows.Controls.Button)(target));
            return;
            case 9:
            this.productImageButton = ((System.Windows.Controls.Image)(target));
            return;
            case 10:
            this.Savebtn = ((System.Windows.Controls.Button)(target));
            
            #line 94 "..\..\..\Pages\AddEditProductPage.xaml"
            this.Savebtn.Click += new System.Windows.RoutedEventHandler(this.Savebtn_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            this.Backbtn = ((System.Windows.Controls.Button)(target));
            
            #line 95 "..\..\..\Pages\AddEditProductPage.xaml"
            this.Backbtn.Click += new System.Windows.RoutedEventHandler(this.Backbtn_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

