<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/toastr.min.css">
</head>
<body>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/toastr.min.js"></script>
<script>
toastr.warning('没有权限', "警告")

//Display a success toast, with a title
toastr.success('没有权限', "警告")

//Display an error toast, with a title
toastr.error('没有权限', "警告")

//Immediately remove current toasts without using animation
//toastr.remove()

//Remove current toasts using animation
//toastr.clear()

//Override global options
toastr.success('没有权限', "警告", {timeOut: 3000})
</script>
</body>
</html>