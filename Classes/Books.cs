
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
    
public partial class Books
{

    public int id_book { get; set; }

    public string Name { get; set; }

    public Nullable<int> Kolvo { get; set; }

    public Nullable<int> Year { get; set; }

    public Nullable<int> id_publishing { get; set; }

    public Nullable<int> id_Genre { get; set; }

    public Nullable<int> id_Categories { get; set; }

    public Nullable<int> id_Format { get; set; }

    public Nullable<System.DateTime> DatePublishing { get; set; }

    public Nullable<int> id_Reader { get; set; }

    public string Photo { get; set; }



    public virtual Categories Categories { get; set; }

    public virtual Format Format { get; set; }

    public virtual Genre Genre { get; set; }

    public virtual Publishing Publishing { get; set; }

    public virtual Reader Reader { get; set; }

}

}
