'use strict';

(function ($) {

    $(function () {
       var datascource = {
            'id': '1',
            'name': '一级部门',
            'title': '战三',
            'num': '1',
            'totalNum': '10',
            'flag': '1',
            'children': [
                {
                    'id': '2', 'name': '二级部门',
                    'title': '李四',
                    'num': '3',
                    'totalNum': '10',
                    'flag': '0',
                },
                {
                    'id': '3',
                    'name': '二级部门',
                    'title': '王五',
                    'num': '3',
                    'totalNum': '10',
                    'flag': '0',
                    'children': [
                        { 'id': '4', 'name': '三级部门', 'title': '胡柳', 'num': '3', 'totalNum': '10', 'flag': '1' },
                        {
                            'id': '5',
                            'name': '三级部门',
                            'title': 'senior engineer',
                            'num': '3',
                            'totalNum': '10',
                            'flag': '0',
                            'children': [
                                { 'id': '6', 'name': '四级部门', 'title': 'engineer', 'num': '3', 'totalNum': '10', 'flag': '0' },
                                { 'id': '7', 'name': '四级部门', 'title': 'UE engineer', 'num': '3', 'totalNum': '10', 'flag': '0' }
                            ]
                        }
                    ]
                },
                { 'id': '8', 'name': '二级部门', 'title': 'department manager', 'num': '4', 'totalNum': '10', 'flag': '0' },
                { 'id': '9', 'name': '二级部门', 'title': 'department manager', 'num': '5', 'totalNum': '10', 'flag': '0' }
            ]
        };

        $('#chart-container').orgchart({
            'data': datascource,
            'depth': 9,
            'nodeContent': 'title',
            'nodeID': 'id',
            'exportButton': true,
            'exportFilename': 'Chart',
            'parentNodeSymbol': 'fa-th-large',
            'createNode': function ($node, data) {

                $node.on('click', function (event) {

                    if (!$(event.target).is('.edge')) {
                        $('#selected-node').val(data.name).data('node', $node);
                    }
                });
                var html = `<span class="edit">编辑</span>
						  <div class="admin-head no-admin"><span>`+ data.num + `</span></div> 
						  <div class="department-detail">
						  	<div id="title" title="IT" class="department-name text-overflow-hidden">`+ data.name + `</div>
						  	<div class="admin-info node-content padding-top-10">
						  		<span title="" class="admin-name text-overflow-hidden name-width">`+ data.title + `</span>
						  	</div> 
						  	<div title="正式人数/非正式人数" class="people-num node-content">人数：`+ data.num + `（` + data.num + `／` + data.totalNum + `）</div>
						  </div>`;
                $node.children('.content').html(html);
                var parentComhtml = '<span class="icon depart-mark icon-fenzigongsi">子公司</span>';
                if (data.flag == '1') {
                    $node.children('.content').children(".edit").before(parentComhtml);
                }
            }
        })
            .on('click', '.orgchart', function (event) {
                if (!$(event.target).closest('.node').length) {
                    $('#selected-node').val('');
                }
            });

        var num = 1, percent = 100;
        //缩小
        $(".raise-scale-btn").on('click', function () {
            num -= 0.1;
            percent -= 10;
            $(".orgchart").css("transform", "scale(" + num + ")");
            $("#num").html(percent);
            return num, percent;
        });
        //放大
        $(".reduce-scale-btn").on('click', function () {
            num += 0.1;
            percent += 10;
            console.log(num);
            $(".orgchart").css("transform", "scale(" + num + ")");
            $("#num").html(percent);
            return num, percent;
        });
        //重置
        $(".reset-scale-btn").on('click', function () {
            $(".orgchart").css("transform", "scale(1)");
            $("#num").html(100);
            return num = 1, percent = 100;
        });
        $(".create-btn").on('click', function () {
            $(".mask").css("display", "block");
        });
        $(".edit").on('click', function () {
            $(".mask").css("display", "block");
        });
        $("#btn-cancle").on('click', function () {
            $(".mask").css("display", "none");
        });
        $(".close").on('click', function () {
            $(".mask").css("display", "none");
        });
    });

})(jQuery);