<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LLIB | ${userinfo.nickname} </title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/resources/dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />

<#include "header.ftl">
<#include "left_column.ftl">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
            ${userinfo.firstName} ${userinfo.surname}
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">

            <div class="row">
                <div class="col-md-12">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#info" data-toggle="tab">����������</a></li>
                            <#if access><li><a href="#settings" data-toggle="tab">�������������</a></li></#if>
                        </ul>
                        <div class="tab-content">
                            <div class="active tab-pane" id="info">

                                <!-- Post -->
                                <div class="post">
                                    <div class='row margin-bottom'>
                                        <div class='col-sm-4'>

                                            <img class='img-responsive img-bordered-sm'
                                                 src='/resources/uploads/user_images/${userinfo.avatar}' alt='Photo'>
                                        </div><!-- /.col -->
                                        <div class="col-sm-8">
                                            <h1>${userinfo.firstName} ${userinfo.surname}</h1>
                                            <form class="form-horizontal" action="/tables/blood/${userinfo.id}" method="post">

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">������� ������:</label>
                                                    <div class="col-sm-8">
                                                    <input type="text" class="form-control" name="sugar_level"
                                                    placeholder="������� ��� ������� ������"/>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-4 control-label">����� ������������:</label>
                                                    <div class="col-sm-8">
                                                    <input type="text" class="form-control" name="description"
                                                    placeholder="��� ���� ������������?"/>
                                                    </div>
                                                </div>

                                                <div class="box-footer">
                                                    <button type="submit" class="btn btn-primary pull-right">��������</button>
                                                </div><!-- /.box-footer -->



                                            </form>



                                        </div>

                                    </div><!-- /.row -->

                                </div><!-- /.post -->

                            </div><!-- /.tab-pane -->
                        <#if access>
                            <div class="tab-pane" id="settings">

                                <form class="form-horizontal" enctype="multipart/form-data"
                                      action="/tables/users/${userinfo.id}" method="POST">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">��� �� �����:</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="nickname"
                                                       placeholder="���������� ���� �������"
                                                       value="${userinfo.nickname}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Email:</label>
                                            <div class="col-sm-10">
                                                <input type="email" class="form-control" name="email"
                                                       placeholder="������� ����� ������ ������������ ��������� �����"
                                                       value="${userinfo.email}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">���:</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="first_name"
                                                       placeholder="������� ���� ���" value="${userinfo.firstName}">
                                            </div>
                                        </div>
                                        <#--<div class="form-group">-->
                                            <#--<label class="col-sm-2 control-label">������ ���:</label>-->
                                            <#--<div class="col-sm-10">-->
                                                <#--<input type="text" class="form-control" name="last_name"-->
                                                       <#--placeholder="������� ���� ������ ��� (�������������)"-->
                                                       <#--value="${userinfo.lastName}">-->
                                            <#--</div>-->
                                        <#--</div>-->
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">�������:</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" name="surname"
                                                       placeholder="������� ���� �������" value="${userinfo.surname}">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">������:</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" name="password"
                                                       placeholder="������� ������">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">������������� ������:</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" name="password_confirmation"
                                                       placeholder="������� ������ ��� ���">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">������:</label>
                                            <div class="col-sm-10">
                                                <input type="file" name="avatar">
                                            </div>
                                        </div>
                                        <#--<@security.authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_MANAGER')">-->

                                            <#--<div class="form-group">-->
                                                <#--<label class="col-sm-2 control-label">����:</label>-->
                                                <#--<div class="col-sm-10">-->
                                                    <#--<select class="form-control select2" style="width: 100%;"-->
                                                            <#--name="role">-->
                                                        <#--<option selected="selected">${userinfo.role}</option>-->
                                                        <#--<option>ROLE_ADMIN</option>-->
                                                        <#--<option>ROLE_MANAGER</option>-->
                                                        <#--<option>ROLE_SIMPLE</option>-->
                                                    <#--</select>-->
                                                <#--</div>-->
                                            <#--</div>-->
                                        <#--</@security.authorize>-->
                                    </div><!-- /.box-body -->
                                    <div class="box-footer">
                                        <button class="btn btn-default">������</button>
                                        <button type="submit" class="btn btn-primary pull-right">�������������</button>
                                    </div><!-- /.box-footer -->
                                </form>
                            </div><!-- /.tab-pane -->
                        </#if>
                        </div><!-- /.tab-content -->

                    </div><!-- /.nav-tabs-custom -->
                </div><!-- /.col -->
            </div><!-- /.row -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">������� ������</h3>
                            <div class="box-tools">


                            </div>
                        </div><!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover">
                                <tr>
                                    <th>����</th>
                                    <th>������� ����� (�����/�)</th>
                                    <th>����� ������������</th>
                                </tr>
                                <#list bloodinfo as b>
                                <tr>
                                    <td>${b.date}</td>
                                    <#if b.sugar_level < 5>
                                        <td><span class="label label-success">${b.sugar_level}</span></td>
                                    <#elseif b.sugar_level < 6>
                                        <td><span class="label label-warning">${b.sugar_level}</span></td>
                                    <#else>
                                        <td><span class="label label-danger">${b.sugar_level}</span></td>

                                    </#if>
                                    <td>${b.description}</td>
                                </tr>
                                </#list>
                            </table>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>
            </div>

        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->


<#include "footer.ftl">
    <!-- Control Sidebar -->
<#include "control_sidebar.ftl">
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div><!-- ./wrapper -->

<!-- jQuery 2.1.4 -->
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.5 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/resources/plugins/fastclick/fastclick.min.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
<script>
    $(function () {
        $("#example1").DataTable();
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": true
        });
    });
</script>
</body>
</html>
