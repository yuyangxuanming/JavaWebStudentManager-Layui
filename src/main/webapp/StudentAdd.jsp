<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息添加</title>
    <link rel="stylesheet" href="layui/css/layui.css">
</head>
<body>
<form class="layui-form">
    <div class="layui-card-body">
        <div class="layui-form-item">
            <label class="layui-form-label">学生姓名：</label>
            <div class="layui-input-block">
                <input type="text" class="layui-input" id="name" lay-verify="required" name="name" lay-verType="tips" lay-reqText="请输入学生姓名！" style=" width: 50%;border-color: dodgerblue;">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">学生性别：</label>
            <div class="layui-input-block">
                <input type="radio" name="sex" value="男" title="男" checked>
                <input type="radio" name="sex" value="女" title="女">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">出生年月：</label>
            <div class="layui-input-block">
                <input type="date" class="layui-input" id="birthday" lay-verify="required" name="birthday" lay-verType="tips" lay-reqText="请输入学生出生年月！" style=" width: 50%;border-color: dodgerblue;">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">学生手机：</label>
            <div class="layui-input-block">
                <input type="text" class="layui-input" id="mobile" lay-verify="required" name="mobile" lay-verType="tips" lay-reqText="请输入学生手机！" style="border-color: dodgerblue;">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">学生邮箱：</label>
            <div class="layui-input-block">
                <input type="text" class="layui-input" id="email" lay-verify="required" name="email" lay-verType="tips" lay-reqText="请输入学生邮箱！" style="border-color: dodgerblue;">
            </div>
        </div>
        <hr class="layui-bg-blue">
        <div class="layui-input-item">
            <label class="layui-form-label" style="color: dodgerblue; ">学生班级：</label>
            <div class="layui-input-block">
                <select name="clazzName" id="clazzName" lay-verify="required">

                </select>
            </div>
        </div>
        <br>
        <div class="layui-input-item">
            <label class="layui-form-label" style="color: dodgerblue;">学生导师：</label>
            <div class="layui-input-block">
                <select name="teacherName" id="teacherName" lay-verify="required">

                </select>
            </div>
        </div>
        <div class="layui-form-item layui-hide">
            <button type="button" lay-submit="" lay-filter="user-add-save" id="user-add-save" class="layui-btn">
                确认
            </button>
        </div>
    </div>
</form>
<script src="layui/layui.all.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form;
        const $ = layui.$;
        $.ajax({
            url: 'ClazzsAllName',
            success: function (data) {
                data = data.data;
                $.each(data, function (index, item) {
                    $('#clazzName').append(new Option(item.name, item.name));
                });
                form.render('select');
            }
        });
        $.ajax({
            url: 'TeachersAllName',
            success: function (data) {
                data = data.data;
                $.each(data, function (index, item) {
                    $('#teacherName').append(new Option(item.name, item.name));
                });
                form.render('select');
            }
        });
    });
</script>
</body>
</html>
