#pragma checksum "..\..\..\Pages\AddEditMaterialPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "990F294794D9534719A4F27F2087E8C0A7188A2C4CA210348D0417F88AD18CC9"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

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
    /// AddEditMaterialPage
    /// </summary>
    public partial class AddEditMaterialPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 14 "..\..\..\Pages\AddEditMaterialPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid MaterialList;
        
        #line default
        #line hidden
        
        
        #line 22 "..\..\..\Pages\AddEditMaterialPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button RemoveMaterialBtn;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\Pages\AddEditMaterialPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BackBtn;
        
        #line default
        #line hidden
        
        
        #line 29 "..\..\..\Pages\AddEditMaterialPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox MaterialComboBox;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\Pages\AddEditMaterialPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox CountTextBox;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\Pages\AddEditMaterialPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddMaterialBtn;
        
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
            System.Uri resourceLocater = new System.Uri("/SessiaApp;component/pages/addeditmaterialpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\AddEditMaterialPage.xaml"
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
            this.MaterialList = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 2:
            this.RemoveMaterialBtn = ((System.Windows.Controls.Button)(target));
            
            #line 22 "..\..\..\Pages\AddEditMaterialPage.xaml"
            this.RemoveMaterialBtn.Click += new System.Windows.RoutedEventHandler(this.RemoveMaterialBtn_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.BackBtn = ((System.Windows.Controls.Button)(target));
            
            #line 23 "..\..\..\Pages\AddEditMaterialPage.xaml"
            this.BackBtn.Click += new System.Windows.RoutedEventHandler(this.BackBtn_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.MaterialComboBox = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 5:
            this.CountTextBox = ((System.Windows.Controls.TextBox)(target));
            
            #line 33 "..\..\..\Pages\AddEditMaterialPage.xaml"
            this.CountTextBox.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.IntPreviewTextInput);
            
            #line default
            #line hidden
            return;
            case 6:
            this.AddMaterialBtn = ((System.Windows.Controls.Button)(target));
            
            #line 35 "..\..\..\Pages\AddEditMaterialPage.xaml"
            this.AddMaterialBtn.Click += new System.Windows.RoutedEventHandler(this.AddMaterialBtn_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

