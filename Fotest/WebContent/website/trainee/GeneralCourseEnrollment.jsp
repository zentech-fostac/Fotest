<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="cs" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ct" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript"
	src="website/js/jquery-toaster/jquery.toaster.js"></script>



<ct:url var="addAction" value="/GeneralCourseEnrollmentlist.fssai"></ct:url>
<cf:form action="${addAction}" name="myForm" method="POST"
	commandName="generalCourseEnrollmentForm" onsubmit="return validateFields();">

	<section>
		<%@include file="/website/roles/top-menu.jsp"%>
	</section>
	<!-- main body -->
	<section class="main-section-margin-top">
		<div class="container-fluid">
			<div id="wrapper">
				<!-- Sidebar -->
				<%@include file="/website/roles/slider.jsp"%>
				<!-- /#sidebar-wrapper -->
				<!-- Page Content -->
				<div id="page-content-wrapper">
					<div class="container-fluid">
						<!-- vertical button -->
						<div class="row">
							<div class="col-lg-12">
								<a href="#menu-toggle" class="vertical-menu-position-btn"
									id="menu-toggle"> <i class="fa fa-bars"></i> <span
									class="orange-font">Welcome Fotest</span>
								</a>
							</div>
						</div>
						<!-- add the content here for main body -->
						<!-- timeline  -->
						<div class="row">

							<div class="col-xs-12">
								<h1>
									General Course Enrollment <label id="created">${created }</label>
								</h1>
								<div class="row">
									<div class="col-xs-12">
										
											
										<cf:input path="id" type="hidden" /> 

											<!-- left side -->
						       <div class="col-xs-6">
												
						        <div class="form-group">
									<div>
										<ul class="lab-no">
											<li class="style-li"><strong>Training Lab:</strong></li>
											<li class="style-li error-red">*</li>
											<li id="qsubCategoryErr" style="display: none;"
												class="style-li error-red">Please Training Lab</li>
										</ul>
									</div>
									
									 <cf:select path="trainingLab" class="form-control">
										<cf:option value="" label="Select Qualification sub Category" />
										<cf:options items="${trainingLabMap}" />
									</cf:select> 
								</div>
												
								  <div class="form-group">
                                    <div>
                                        <ul class="lab-no">
                                            <li class="style-li"><strong>Training Lab State:</strong></li><li class="style-li error-red"> * </li>
                                            <!--  valid -->
                                            <!--  <li id="correspondenceStateErr" style="display:none;" class="style-li error-red" >correspondence State can not be blank.</li> -->
                                            
                                        </ul>
                                    </div>
                                    <cf:select path="trainingLabState" class="form-control" >
                                	<cf:option value="0" label="Select training Lab State" />
									<cf:options items="${listStateMaster}" />
                                    </cf:select>
                                </div>
                                 
                                 <div class="form-group">
                                    <div>
                                        <ul class="lab-no">
                                            <li class="style-li"><strong>Training Lab City:</strong></li> <li class="style-li error-red"> * </li>
                                            <!--  valid -->
                                            <!-- <li id="correspondenceCityErr" style="display:none;" class="style-li error-red" >City can not be blank.</li> -->
                                           
                                        </ul>
                                    </div>
                                    <cf:select path="trainingLabCity" class="form-control" >
                                	<cf:option value="0" label="Select training Lab State" />
									<cf:options items="${listStateMaster}" />
                                    </cf:select>
                                </div>

											</div>
											<div class="col-md-4 col-xs-12">
                                                            <a href="login.html">
                                                            
                                                                <input type="submit" class="form-control login-btn" value="Show Details"> </a>
                                                        </div>

													<!-- <input type="submit" id="updatebtn"
														style="display: none; float: right; margin-right: 122px;"
														value="Update" class="btn login-btn" /> <input
														type="submit" id="createbtn" value="Create"
														class="btn login-btn" /> -->
												</div>
											</div>

										
									</div>
								</div>
							</div>

							<!-- search Results -->
							<div class="col-xs-12 " id="testt">

								<!-- table -->
								<div class="row">
									<div class="col-xs-12">
										<fieldset>
											<legend>Training Schedule</legend>
											<ct:if test="${!empty listgeneralCourseEnrollment}">
												<table border="1" id="datatablesfosrest" class="table table-bordered table-responsive">
													
													<thead>
														<tr class="background-open-vacancies">
															<th>select</th>
															<th>Training LabName & Address</th>
															<th>Training slot</th>
															<th>Contact Person name,Number & Email Id</th>
															<th>Seating Capacity</th>
															<th>Seats Available</th>
															
														</tr>
													</thead>

													<ct:forEach items="${listgeneralCourseEnrollment}" var="generalCourseEnrollment">

														<tr>
															<td><input type="radio" ></td>
															<td>${generalCourseEnrollment.trainingLab}</td>
			                                                <td>${generalCourseEnrollment.trainingDate} &nbsp;&nbsp;&nbsp; ${generalCourseEnrollment.trainingTime}  </td>
			                                                <td>${generalCourseEnrollment.contactPerson}</td>
			                                                <td>${generalCourseEnrollment.seatingCapacity}</td>
			                                                <td>${generalCourseEnrollment.seatsavailable}</td>
														</tr>
													</ct:forEach>
												</table>
												<div class="col-md-06 col-xs-12" style="margin-top: -72px;">
												<input type="button" id="savebtn" value="Enroll"
													style=" float: right;"
													 class="btn login-btn" /> </div>
											</ct:if>
											 
										</fieldset>
									</div>
								</div>
							</div>

							<!-- search div ends -->

						</div>
						<!-- row ends -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<input type="hidden" id="idH" value="" />
</cf:form>
 