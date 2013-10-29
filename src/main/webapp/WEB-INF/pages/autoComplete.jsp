<%--
  Date: 13-10-28
  Time: 下午5:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>SpringMVC + jQuery 自动完成插件测试</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="css/autoComplete.css" rel="stylesheet" media="screen">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
    <div class="panel panel-success">
        <div class="col-xs-12 col-md-12 panel-heading">
            <h2>欢迎测试ajax自动完成页面</h2>
        </div>
        <div class="panel-body">
            <form class="form-inline" action="#" role="form">
                <div class="form-group col-md-8 col-xs-12">
                    <label class="sr-only" for="inputField1">请输入一种语言</label>
                    <input class="form-control" id="inputField1" type="text" name="inputField1" placeholder="请输入一门语言"/>
                </div>
                <button class="btn btn-default col-md-4 col-xs-12" type="submit">Ok</button>
            </form>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
<script src="js/jquery.autocomplete.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#inputField1').autocomplete({
            serviceUrl: '${pageContext.request.contextPath}/autoComplete/getTags',
            paramName: "tagName",
            delimiter: ",",
            transformResult: function (response) {
                return {
                    //must convert json to javascript object before process
                    suggestions: $.map($.parseJSON(response), function (item) {
                        return { value: item.tagName, data: item.id };
                    })
                };
            }
        });
    });
</script>
</body>
</html>