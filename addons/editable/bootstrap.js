require.config({
    paths: {
        'editable': '../libs/bootstrap-table/dist/extensions/editable/bootstrap-table-editable.min',
        'x-editable': '../addons/editable/js/bootstrap-editable.min',
    },
    shim: {
        'editable': {
            deps: ['x-editable', 'bootstrap-table']
        },
        "x-editable": {
            deps: ["css!../addons/editable/css/bootstrap-editable.css"],
        }
    }
});
if ($("table.table").size() > 0) {
    require(['editable', 'table'], function (Editable, Table) {
        $.fn.bootstrapTable.defaults.onEditableSave = function (field, row, oldValue, $el) {
            var data = {};
            data["row[" + field + "]"] = row[field];
            Fast.api.ajax({
                url: this.extend.edit_url + "/ids/" + row[this.pk],
                data: data
            });
        };
    });
}