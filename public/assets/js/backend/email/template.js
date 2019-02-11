define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {

    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    "index_url": 'email/template/index',
                    "add_url": "email/template/add",
                    "edit_url": "email/template/edit",
                    "del_url": 'email/template/del',
                    "multi_url": 'email/template/multi',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                columns: [
                    [
                        {field: 'state', checkbox: true, },
                        {field: 'id', title: 'ID', operate: false},
                        {field: 'name', title: __('Name'), align: 'left', formatter: Table.api.formatter.search},
                        {field: 'language', title: __('Language'), formatter: Table.api.formatter.search},
                        {field: 'subject', title: __('Subject'), align: 'left', operate: 'LIKE %...%', placeholder: '模糊搜索'},
                        {field: 'status', title: __('Status'), formatter: Table.api.formatter.status},
                        {field: 'createtime', title: __('Create time'), formatter: Table.api.formatter.datetime, operate: 'RANGE', addclass: 'datetimerange', sortable: true},
                        {field: 'operate', title: __('Operate'), table: table,
                            events: Table.api.events.operate,
                            formatter: Table.api.formatter.operate
                        }
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            },
            formatter: {
                browser: function (value, row, index) {
                    return '<a class="btn btn-xs btn-browser">' + row.useragent.split(" ")[0] + '</a>';
                },
            },
        }
    };
    return Controller;
});