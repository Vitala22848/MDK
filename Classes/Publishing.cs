
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
    
public partial class Publishing
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Publishing()
    {

        this.Books = new HashSet<Books>();

    }


    public int id_publishing { get; set; }

    public string NamePub { get; set; }

    public Nullable<int> id_citys { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<Books> Books { get; set; }

    public virtual Citys Citys { get; set; }

}

}