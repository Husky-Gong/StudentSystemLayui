<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生列表</title>
<link rel="stylesheet" href="resources/layui/css/layui.css" />
</head>
<body>
<div style="margin-top: 20px;margin-left: 50px">
	<div class="layui-form layui-form-pane">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">学号:</label>
				<div class="layui-input-inline">
					<input class="layui-input" id="stNo"/>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">姓名:</label>
				<div class="layui-input-inline">
					<input class="layui-input" id="name"/>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">年龄:</label>

				<div class="layui-input-inline" style="width: 83px;">
					<input class="layui-input" id="minAge" placeholder="最小年龄"/>
				</div>

				<div class="layui-form-mid">-</div>

				<div class="layui-input-inline" style="width: 83px;">
					<input class="layui-input" id="maxAge" placeholder="最大年龄"/>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">性别:</label>
				<div class="layui-input-inline">
					<select id="sex">
						<option value="">请选择性别</option>
						<option value="1">男</option>
						<option value="2">女</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">手机号:</label>
				<div class="layui-input-inline">
					<input class="layui-input" id="phone"/>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">城市:</label>
				<div class="layui-input-inline">
					<select id="city">
						<option value="">请选择城市</option>
						<option value="武汉">武汉</option>
						<option value="孝感">孝感</option>
						<option value="襄樊">襄樊</option>
						<option value="天门">天门</option>
						<option value="黄石">黄石</option>
					</select>
				</div>
			</div>
			<div class="layui-inline">
				<button class="layui-btn" id="searchBtn"><i class="layui-icon layui-icon-search"></i>搜索</button>
			</div>
		</div>
	</div>
</div>
<hr>
<div style="margin-left: 50px">
	<!-- 数据表格 -->
	<table id="dataTable" lay-filter="dataTableFilter">
	</table>
</div>


<!-- 头工具栏 -->
<script type="text/html" id="headerBtns">
	<div class="layui-btn-group">
		<button class="layui-btn layui-btn-sm" lay-event="add"><i class="layui-icon layui-icon-add-1"></i>新增</button>
		<button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="del"><i class="layui-icon layui-icon-delete"></i>删除</button>
	</div>
</script>
<!-- 行工具栏 -->
<script type="text/html" id="rowBtns">

<button class="layui-btn layui-btn-sm" lay-event="detail"><i class="layui-icon layui-icon-about"></i>查看</button>
	<button class="layui-btn layui-btn-sm layui-btn-warm" lay-event="update"><i class="layui-icon layui-icon-edit"></i>修改</button>
</script>

<!-- 编辑数据模板 -->
<script type="text/html" id="editTpt">
	<div style="width: 650px;margin: auto;margin-top: 20px;">
	<!-- form 容器已定义好 -->
	<form class="layui-form layui-form-pane" lay-filter="formFilter">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">学号:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="stNo" placeholder="学号" lay-verify="required|number" lay-reqText="学号不能为空" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">姓名:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" placeholder="姓名" lay-verify="required" lay-reqText="姓名不能为空" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">年龄:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="age" placeholder="年龄" lay-verify="required|number" lay-reqText="年龄不能为空" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">性别:</label>
				<div class="layui-input-inline">
					<input type="radio" name="sex" value="1" checked  title="男"/>
					<input type="radio" name="sex" value="2"  title="女"/>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">电话:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="phone" placeholder="手机号" lay-verify="phone" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">城市:</label>
				<div class="layui-input-inline">
					<select name="city" lay-verify="required" lay-reqText="请选择城市">
						<option value="">请选择城市</option>
						<option value="武汉">武汉</option>
						<option value="孝感">孝感</option>
						<option value="襄樊">襄樊</option>
						<option value="天门">天门</option>
						<option value="黄石">黄石</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">介绍:</label>
			<div class="layui-input-inline">
				<textarea name="desc" class="layui-textarea" style="width: 510px"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			 <div class="layui-input-block">
      			<button type="reset" class="layui-btn layui-btn-normal" >重置</button>
      			<button type="submit" class="layui-btn" lay-submit lay-filter="subBtnFilter">立即提交</button>
    		</div>
		</div>
	</form>
</div>
</script>

<!-- 详情的数据层 -->
<script type="text/html" id="detailTpt">
	<div style="width: 650px;margin: auto;margin-top: 20px;">
	<!-- form 容器已定义好 -->
	<form class="layui-form layui-form-pane" lay-filter="formFilter">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">学号:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="stNo" placeholder="学号" lay-verify="required|number" lay-reqText="学号不能为空" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">姓名:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" placeholder="姓名" lay-verify="required" lay-reqText="姓名不能为空" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">年龄:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="age" placeholder="年龄" lay-verify="required|number" lay-reqText="年龄不能为空" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">性别:</label>
				<div class="layui-input-inline">
					<input type="radio" name="sex" value="1" checked  title="男"/>
					<input type="radio" name="sex" value="2"  title="女"/>
				</div>
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">电话:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="phone" placeholder="手机号" lay-verify="phone" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">城市:</label>
				<div class="layui-input-inline">
					<select name="city" lay-verify="required" lay-reqText="请选择城市">
						<option value="">请选择城市</option>
						<option value="武汉">武汉</option>
						<option value="孝感">孝感</option>
						<option value="襄樊">襄樊</option>
						<option value="天门">天门</option>
						<option value="黄石">黄石</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">介绍:</label>
			<div class="layui-input-inline">
				<textarea name="desc" class="layui-textarea" style="width: 510px"></textarea>
			</div>
		</div>
	</form>
</div>
</script>

<!-- 修改的数据层 -->
<script type="text/html" id="updateTpt">
	<div style="width: 650px;margin: auto;margin-top: 20px;">
	<!-- form 容器已定义好 -->
	<form class="layui-form layui-form-pane" lay-filter="formFilter">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">学号:</label>
				<div class="layui-input-inline">
					<input type="text" readonly class="layui-input" name="stNo" placeholder="学号" lay-verify="required|number" lay-reqText="学号不能为空" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">姓名:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" placeholder="姓名" lay-verify="required" lay-reqText="姓名不能为空" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">年龄:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="age" placeholder="年龄" lay-verify="required|number" lay-reqText="年龄不能为空" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">性别:</label>
				<div class="layui-input-inline">
					<input type="radio" name="sex" value="1" checked  title="男"/>
					<input type="radio" name="sex" value="2"  title="女"/>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">电话:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="phone" placeholder="手机号" lay-verify="phone" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">城市:</label>
				<div class="layui-input-inline">
					<select name="city" lay-verify="required" lay-reqText="请选择城市">
						<option value="">请选择城市</option>
						<option value="武汉">武汉</option>
						<option value="孝感">孝感</option>
						<option value="襄樊">襄樊</option>
						<option value="天门">天门</option>
						<option value="黄石">黄石</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">介绍:</label>
			<div class="layui-input-inline">
				<textarea name="desc" class="layui-textarea" style="width: 510px"></textarea>
			</div>
		</div>
		<!-- 此按钮是用于提交表单的 -->
		<button id="subBtn" lay-submit  lay-filter="subBtnFilter" style="display:none">提交</button>
	</form>
</div>
</script>
<script type="text/javascript"  src="resources/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['form','jquery','table'],function(){
		var form = layui.form;
		var $ = layui.jquery;
		var table = layui.table;
		
		 var tableIns = table.render({
			id:"dataTableId",
			elem:"#dataTable",//数据表格容器
			url:"student.do?service=list",//数据表格的数据地址
			page:true,//开启分页
			width:1050,
			height:500,
			cols:[[//数据表格的表头
				{type:'checkbox'},
				{field:'stNo','title':'学号',width:'120'},
				{field:'name','title':'姓名',width:'120'},
				{field:'age','title':'年龄',width:'60'},
				{field:'sex','title':'性别',width:'60',templet:function(d){
					if(d.sex == 1){
						return "<b style='color:red' color='red'>男</b>";
					}else if(d.sex == 2){
						return "<b style='color:green'>女</b>";
					}
				}},
				{field:'phone','title':'电话',width:'140'},
				{field:'city','title':'城市',width:'100'},
				{field:'desc','title':'简介',width:'200'},
				{'title':'操作',fixed:'right',toolbar:"#rowBtns",width:'200'}
			]],
			toolbar:"#headerBtns",
			//由于返回的数据格式不一致  所以自定义解析格式
			parseData:function(rs){
				if(rs.code ==200){
					return {
						'code':rs.code,
						'msg':rs.msg,
						'count':rs.data.count,
						'data':rs.data.data
					}
				}
			},
			response:{
				statusCode:200,//重新指定正常的响应码值
			}
		});
		//为搜索按钮添加事件
		$("#searchBtn").click(function(){
			var stNo = $("#stNo").val();
			var name = $("#name").val();
			var minAge = $("#minAge").val();
			var maxAge = $("#maxAge").val();
			var sex = $("#sex").val();
			var phone = $("#phone").val();
			var city = $("#city").val();
			
			//此时 将查询数据传给 后台  然后 后台返回数据结果
			//表格重新渲染数据
			//使用表格对象 调用 reload 方法重载表格
			tableIns.reload({
				where:{
					stNo:stNo,
					name:name,
					minAge:minAge,
					maxAge:maxAge,
					sex:sex,
					phone:phone,
					city:city
				},
				page:1,//点击搜索后 永远从第一个开始
			});
		});
		//===头工具栏事件======================================================
		table.on("toolbar(dataTableFilter)",function(d){
			//获取事件类型
			var event = d.event;
			if(event == "add"){
				//新增学生的业务
				//调用新增
				add();
			}else if(event == "del"){
				//删除学生的业务
				del();
			}
		});
		
		//====具体的新增方法
		function add(){
			//1. 弹出一个层  让用户可以输入数据
			var opt = {//	弹出层的参数
				title:'编辑',
				type:1,//html
				content:$("#editTpt").html(),// 弹层类型
				area:['650px','480px'],//弹出层宽高
				btn1:function(index,layero){
					layer.msg("点击确认输出的事件");
				},
				success:function(layero,index){//弹层 完成后 调用的函数
					//重新渲染表单 组件
					form.render();
					//为提交按钮  添加提交的监听事件
					form.on("submit(subBtnFilter)",function(d){
						//
						console.log(d.field);//表单数据
						//使用ajax进行数据提交
						$.post("student.do?service=add",d.field,function(rs){
							if(rs.code != 200){
								//展示错误的信息
								layer.msg(rs.msg);
								return false;
							}
							//如果添加成功:
							//1. 关闭弹出层
							layer.close(index);
							//2. 刷新表格数据
							//点击搜索按钮  然后搜索按钮触发了查询  自动重新加载数据
							$("#searchBtn").click();
						});
						
						return false;//阻止表单提交
					});
				}
			};
			layer.open(opt);
		}
		//====删除方法======
		function del(){
			//1. 获取选中的数据
			var d = table.checkStatus("dataTableId");
			var data = d.data;
			//进行数据校验
			if(data == null || data.length == 0){
				layer.msg("请选择要删除的数据");
				return false;
			}
			//2. 将选中的数据 传给 服务器
			//此时 data 就是我们要删除的数据
			console.log(data);
			//只需要将每条数据的stNo传给后台即可
			var param = "";
			$.each(data,function(index,value){
				param = param+"stNo="+value.stNo+"&";
			});
			//删除数据 有一定的风险  为了防止误删除  所以进行二次确认
			layer.confirm("确定要删除吗?",function(index){
				//使用 ajax 提交数据
				$.get("student.do?service=delete&"+param,function(rs){
					if(rs.code != 200){
						layer.msg(rs.msg);
						return false;
					}
					//刷新表格数据
					$("#searchBtn").click();
					//关闭弹出层
					layer.close(index);
				});
			});
		}
		//行监听事件===========================================
		table.on("tool(dataTableFilter)",function(d){
			var event = d.event;//事件类型
			var data = d.data;//行数据
			if(event == "detail"){
				detail(data);
			}else if(event == "update"){
				update(data);
			}
		});	
		//详情方法
		function detail(data){ //detailTpt
			//1. 弹出一个层  让用户可以输入数据
			var opt = {//	弹出层的参数
				title:'详情',
				type:1,//html
				content:$("#detailTpt").html(),// 弹层类型
				area:['650px','560px'],//弹出层宽高
				btn:['关闭'],
				btnAlign:"c",//居中
				btn1:function(index,layero){
					layer.close(index);
				},
				success:function(layero,index){//弹层 完成后 调用的函数
					form.val('formFilter',data);
					//重新渲染表单 组件
					form.render();
				}
			};
			layer.open(opt);
		}
		//具体的修改方法===================================
		function update(data){
			//1. 弹出一个层  让用户可以输入数据
			var opt = {//	弹出层的参数
				title:'详情',
				type:1,//html
				content:$("#updateTpt").html(),// 弹层类型
				area:['650px','560px'],//弹出层宽高
				btn:['确认','取消'],
				btnAlign:"c",//居中
				btn1:function(index,layero){
					//点击确认时  要进行数据提交
					$("#subBtn").click();
				},
				success:function(layero,index){//弹层 完成后 调用的函数
					form.val('formFilter',data);
					//重新渲染表单 组件
					form.render();
					//为表单绑定提交事件
					form.on("submit(subBtnFilter)",function(d){
						//使用ajax 提交数据
						$.post("student.do?service=update",d.field,function(rs){
							if(rs.code != 200){
								layer.msg(rs.msg);
								return false;
							}
							//刷新表格  点击提交按钮刷新表格
							$("#searchBtn").click();
							//关闭弹出层
							layer.close(index);
						});
						//阻止表单默认提交
						return false;
					});
				}
			};
			layer.open(opt);
			
		}	
	});


</script>

</body>
</html>