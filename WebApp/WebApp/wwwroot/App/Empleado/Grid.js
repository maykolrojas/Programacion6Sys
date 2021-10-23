"use strict";
var EmpleadoGrid;
(function (EmpleadoGrid) {
    if (MensajeApp != "") {
        Toast.fire({
            icon: "success", title: MensajeApp
        });
    }
    function OnclickEliminar(id) {
        ComfirmAlert("Desea eliminar el registro?", "Eliminar", "warning", "#3085d6", "d33")
            .then(function (result) {
            if (result.isConfirmed) {
                window.location.href = "Empleado/Grid?handler=Eliminar&id=" + id;
            }
        });
    }
    EmpleadoGrid.OnclickEliminar = OnclickEliminar;
    $("#GridView").DataTable();
})(EmpleadoGrid || (EmpleadoGrid = {}));
//# sourceMappingURL=Grid.js.map