
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------


namespace AppLibrary.Classes
{

using System;
    using System.Collections.Generic;
    
public partial class Reader
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Reader()
    {

        this.Books = new HashSet<Books>();

    }


    public int id_Reader { get; set; }

    public string Name { get; set; }

    public Nullable<System.DateTime> date_of_delivery { get; set; }

    public Nullable<System.DateTime> date_of_issue { get; set; }

    public string address { get; set; }

    public string phone_number { get; set; }

    public Nullable<int> reader_s_ticket_number { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Books> Books { get; set; }

}

}
