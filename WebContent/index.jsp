<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student table</title>
<link rel="stylesheet" href="resources/layui/css/layui.css"/>
</head>
<body>
<div style="margin-top:20px;margin-left:50px">
	<div  class="layui-form layui-form-pane">
		<div class="layui-form-item">
		
			<div class="layui-inline" >
				<label class="layui-form-label" style="width:200px;">Student No.:</label>
				<div class="layui-input-inline">
					<input class="layui-input" id="studentNumber"/>
				</div>
			</div>
			
			<div class="layui-inline">
				<label class="layui-form-label" style="width:200px;">Name:</label>
				<div class="layui-input-inline">
					<input class="layui-input" id="name"/>
				</div>
			</div>
			
			<div class="layui-inline">
				<label class="layui-form-label" style="width:200px;">Age:</label>
				<div class="layui-input-inline" style="width:83px;">
					<input class="layui-input" id="age" placeholder="min"/>
				</div>
				<div class="layui-form-mid">-</div>
				<div class="layui-input-inline" style="width:83px;">
					<input class="layui-input" id="age" placeholder="max"/>
				</div>
			</div>
			
		</div>
		
		<div class="layui-form-item">
		
			<div class="layui-inline">
				<label class="layui-form-label" style="width:200px;">Sex:</label>
				<div class="layui-input-inline">
					<select id="sex">
						<option value="Your gender"></option>
						<option value="1">Male</option>
						<option value="2">Female</option>
					</select>
				</div>
			</div>
			
			<div class="layui-inline">
				<label class="layui-form-label" style="width:200px;">Phone:</label>
				<div class="layui-input-inline">
					<input class="layui-input" id="phone"/>
				</div>
			</div>
			
			<div class="layui-inline">
				<label class="layui-form-label" style="width:200px;">City:</label>
				<div class="layui-input-inline">
					<select id="city">
						<option value="">Your City:</option>
						<option value="Boston">Boston</option>
						<option value="Cambridge">Cambridge</option>
						<option value="Chicago">Chicago</option>
						<option value="Los Angles">Los Angles</option>
						<option value="Miami">Miami</option>
						<option value="New Jersey">New Jersey</option>
						<option value="Roxbory">Roxbory</option>
					</select>
				</div>
			</div>
			
			<div class="layui-inline">
				<button class="layui-btn" id="searchBtn"><i class="layui-icon layui-icon-search"></i>Search</button>
			</div>
			
		</div>
	</div>
</div>
<hr>

<div style="margin-left:50px">
	<table id="dataTable" lay-filter="dataTableFilter">
	</table>
</div>

<script type="text/html" id="headerBtns">
	<div class="layui-btn-group">
		<button class="layui-btn layui-btn-sm" lay-evern="add"><i class ="layui-icon layui-icon-add-1"></i>Add</button>
		<button class="layui-btn layui-btn-sm layui-btn-danger" lay-evern="del"><i class ="layui-icon layui-icon-delete"></i>Delete</button>
	</div>
</script>

<script type="text/html" id="rowBtns">
	<button class="layui-btn layui-btn-sm" lay-event="detail"><i class="layui-icon layui-icon-about"></i>Check</button>
	<button class="layui-btn layui-btn-sm layui-btn-warm" lay-event="update"><i class="layui-icon layui-icon-edit"></i>Edit</button>
</script>

<script type="text/html" id="editTpt">
	<div style="width: 650;margin:auto;margin-top:20px;">
		<form class="layui-form layui-form-pane" lay-filter="formFilter">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">Student number:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="studentNumber" placeholder="Student number" lay-verify="required|number" lay-reqText="学号不能为空" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Name:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" placeholder="name" lay-verify="required" lay-reqText="Invalid name" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">Age:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="age" placeholder="age" lay-verify="required|number" lay-reqText="Invalid age" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Gender:</label>
				<div class="layui-input-inline">
					<input type="radio" name="sex" value="1" checked  title="Male"/>
					<input type="radio" name="sex" value="2"  title="Female"/>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">Tele:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="phone" placeholder="Telephone number" lay-verify="phone" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">City:</label>
				<div class="layui-input-inline">
					<select name="city" lay-verify="required" lay-reqText="Invalid city">
						<option value="">Which city</option>
						<option value="">Your City:</option>	
						<option value="Boston">Boston</option>
						<option value="Cambridge">Cambridge</option>
						<option value="Chicago">Chicago</option>
						<option value="Los Angles">Los Angles</option>
						<option value="Miami">Miami</option>
						<option value="New Jersey">New Jersey</option>
						<option value="Roxbory">Roxbory</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">Information:</label>
			<div class="layui-input-inline">
				<textarea name="info" class="layui-textarea" style="width: 510px"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			 <div class="layui-input-block">
      			<button type="reset" class="layui-btn layui-btn-normal" >Reset</button>
      			<button type="submit" class="layui-btn" lay-submit lay-filter="subBtnFilter">Submit</button>
    		</div>
		</div>
	</form>
	</div>
</script>

<script type="text/html" id="detailTpt">
	<div style="width:650px;margin:auto;margin-top:20px;">
	<form class="layui-form layui-form-pane" lay-filter="formFilter">
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">Student No.:</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" name="studentNumber" placeholder="Student Number" lay-verify="required|number" lay-reqText="Invalid student number!">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">Name:</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" name="name" placeholder="Student Name" lay-verify="required" lay-reqText="Invalid student name!">
			</div>
		</div>
	</div>

	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">Age:</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" name="age" placeholder="Student age" lay-verify="required|number" lay-reqText="invalid age" />
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">Gender:</label>
			<div class="layui-input-inline">
				<input type="radio" name="sex" value="1" checked  title="Male"/>
				<input type="radio" name="sex" value="2"  title="Female"/>
			</div>
		</div>
	</div>
	
	<div class="layui-form-item">
		<div class="layui-inline">
			<label class="layui-form-label">Telephone:</label>
			<div class="layui-input-inline">
				<input type="text" class="layui-input" name="phone" placeholder="Telephone number" lay-verify="phone" />
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">City:</label>
			<div class="layui-input-inline">
				<select name="city" lay-verify="required" lay-reqText="Invalid city">
					<option value="">Which city</option>
					<option value="">Your City:</option>
					<option value="Boston">Boston</option>
					<option value="Cambridge">Cambridge</option>
					<option value="Chicago">Chicago</option>
					<option value="Los Angles">Los Angles</option>
					<option value="Miami">Miami</option>
					<option value="New Jersey">New Jersey</option>
					<option value="Roxbory">Roxbory</option>
				</select>
			</div>
		</div>
	</div>
	
	<div class="layui-form-item">
		<label class="layui-form-label">Information:</label>
		<div class="layui-input-inline">
			<textarea name="info" class="layui-textarea" style="width: 510px"></textarea>
		</div>
	</div>
	</form>
	</div>
</script>


<script type="text/html" id="updateTpt">
	<div style="width: 650px;margin: auto;margin-top: 20px;">
	<form class="layui-form layui-form-pane" lay-filter="formFilter">
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">Student number:</label>
				<div class="layui-input-inline">
					<input type="text" readonly class="layui-input" name="studentNumber" placeholder="Student number" lay-verify="required|number" lay-reqText="Invalid student number" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Student name:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="name" placeholder="name" lay-verify="required" lay-reqText="Invalid name" />
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">Age:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="age" placeholder="Age" lay-verify="required|number" lay-reqText="Invalid age" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">Gender:</label>
				<div class="layui-input-inline">
					<input type="radio" name="sex" value="1" checked  title="Male"/>
					<input type="radio" name="sex" value="2"  title="Female"/>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">Tel:</label>
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="phone" placeholder="Tel number" lay-verify="phone" />
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">City:</label>
				<div class="layui-input-inline">
					<select name="city" lay-verify="required" lay-reqText="Invalid city">
						<option value="">Which city</option>
						<option value="">Your City:</option>	
						<option value="Boston">Boston</option>
						<option value="Cambridge">Cambridge</option>
						<option value="Chicago">Chicago</option>
						<option value="Los Angles">Los Angles</option>
						<option value="Miami">Miami</option>
						<option value="New Jersey">New Jersey</option>
						<option value="Roxbory">Roxbory</option>
					</select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">Information:</label>
			<div class="layui-input-inline">
				<textarea name="info" class="layui-textarea" style="width: 510px"></textarea>
			</div>
		</div>
		
		<button id="subBtn" lay-submit  lay-filter="subBtnFilter" style="display:none">Submit</button>
	</form>
</div>
</script>

<script type="text/javascript" src="resources/layui/layui.js"></script>
<script type="text/javascript">
	layui.use(['form','jquery','table'],function(){
		varform=layui.form;
		var $ = layui.jquery;
		var table = layui.table;
		
		var tableIns = table.render({
			id:"dataTableId"
		})
		
		table.on("toolbar(dataTableFilter)",function(d){
			var evern = d.evenr;
			if(event=="add"){
				add();
			}else if(event == "del"){
				del();
			}
		});
		function add(){
			var opt = {
					title:'Add new student',
					type:1,//html
					content:$("editTpt").html(),
					area:['650px','480px'],
					btn1:function(index,layero){
						layer.msg("click function");
					},
					success:function(layero,index){
						form.render();
						form.on("submit(subBtnFilter)",function(d){
							console.log(d.field);
							$.post("student.do?service=add",d.field,function(rs){})
						});
					}
			}
		}
		
		})

</body>
</html>

































