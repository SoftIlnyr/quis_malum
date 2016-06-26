<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>QM</title>
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


<#include "header.ftl">
<#include "left_column.ftl">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Таблица хлебных величин
            </h1>


        </section>

        <!-- Main content -->
        <section class="content">

            <!-- Default box -->
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Зерновые, злаковые, изделия из муки</h3>
                    <div class="box-tools">
                        <div class="input-group" style="width: 150px;">
                            <input type="text" name="table_search" class="form-control input-sm pull-right"
                                   placeholder="Search">
                            <div class="input-group-btn">
                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>Продукт</th>
                            <th>Количество продукта на 1 ХЕ</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>белый, серый хлеб (кроме сдобного)</td>
                            <td>1 кусок толщиной 1 см</td>
                            <td>20 г</td>
                        </tr>
                        <tr>
                            <td>чёрный хлеб</td>
                            <td>1 кусок толщиной 1 см</td>
                            <td>25 г</td>
                        </tr>
                        <tr>
                            <td>хлеб с отрубями</td>
                            <td>1 кусок толщиной 1,3 см</td>
                            <td>30 г</td>
                        </tr>
                        <tr>
                            <td>хлеб бородинский</td>
                            <td>1 кусок толщиной 0,6 см</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>сухари</td>
                            <td>горсть</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>крекеры (сухое печенье)</td>
                            <td>---</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>панировочные сухари</td>
                            <td>---</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>сдобная булка</td>
                            <td>---</td>
                            <td>20 г</td>
                        </tr>
                        <tr>
                            <td>блин (большой)</td>
                            <td>1 шт.</td>
                            <td>30 г</td>
                        </tr>
                        <tr>
                            <td>вареники с творогом замороженные</td>
                            <td>4 шт.</td>
                            <td>50 г</td>
                        </tr>
                        <tr>
                            <td>пельмени замороженные</td>
                            <td>4 шт.</td>
                            <td>50 г</td>
                        </tr>
                        <tr>
                            <td>ватрушка</td>
                            <td>---</td>
                            <td>50 г</td>
                        </tr>
                        <tr>
                            <td>вафли (мелкие)</td>
                            <td>1,5 шт.</td>
                            <td>17 г</td>
                        </tr>
                        <tr>
                            <td>мука</td>
                            <td>1 ст. ложка с горкой</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>пряник</td>
                            <td>0,5 шт.</td>
                            <td>40 г</td>
                        </tr>
                        <tr>
                            <td>оладьи (средние)</td>
                            <td>1 шт.</td>
                            <td>30 г</td>
                        </tr>
                        <tr>
                            <td>макаронные изделия (в сыром виде)</td>
                            <td>1–2 ст. ложки (в зависимости от формы)</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>макаронные изделия (в вареном виде)</td>
                            <td>2–4 ст. ложки (в зависимости от формы)</td>
                            <td>50 г</td>
                        </tr>
                        <tr>
                            <td>крупа (любая, в сыром виде)</td>
                            <td>1 ст. ложка</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>каша (любая)</td>
                            <td>2 ст. ложки с горкой</td>
                            <td>50 г</td>
                        </tr>
                        <tr>
                            <td>кукуруза (средняя)</td>
                            <td>0,5 початка</td>
                            <td>100 г</td>
                        </tr>
                        <tr>
                            <td>кукуруза (консервированная)</td>
                            <td>3 ст. ложки</td>
                            <td>60 г</td>
                        </tr>
                        <tr>
                            <td>кукурузные хлопья</td>
                            <td>4 ст. ложки</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>попкорн</td>
                            <td>10 ст. ложек</td>
                            <td>15 г</td>
                        </tr>
                        <tr>
                            <td>овсяные хлопья</td>
                            <td>2 ст. ложки</td>
                            <td>20 г</td>
                        </tr>
                        <tr>
                            <td>пшеничные отруби</td>
                            <td>12 ст. ложек</td>
                            <td>50 г</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        </tbody>
                    </table>
                </div><!-- /.box-body -->
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
</body>
</html>
