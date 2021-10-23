"use strict";
var TipoInquilinoGrid;
(function (TipoInquilinoGrid) {
    if (MensajeApp != "") {
        Toast.fire({
            icon: "success", title: MensajeApp
        });
    }
    function OnclickEliminar(id) {
        ComfirmAlert("Desea eliminar el registro?", "Eliminar", "warning", "#3085d6", "d33")
            .then(function (result) {
            if (result.isConfirmed) {
                window.location.href = "TipoInquilino/Grid?handler=Eliminar&id=" + id;
            }
        });
    }
    TipoInquilinoGrid.OnclickEliminar = OnclickEliminar;
    $("#GridView").DataTable();
})(TipoInquilinoGrid || (TipoInquilinoGrid = {}));
//# sourceMappingURL=Grid.js.map