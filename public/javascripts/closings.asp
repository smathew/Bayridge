
<%
var currentClosings = "";
var imgCalendar = "calendar";
switch ( dt.getMonth() + 1 ) {
	case 1:
		currentClosings = "mlkpres";
		break;
	case 4:
	case 5:
		currentClosings = "memind";
		break;
	case 6:
		currentClosings = "ind";
		break;
	case 7:
		if ( dt.getDate() <= 5 )
			currentClosings = "ind";
		else
			currentClosings = "labor";
		break;
	case 8:
		currentClosings = "labor";
		break;
	case 9:
		if ( dt.getDate() == 1 )
			currentClosings = "labor";
		else
			currentClosings = "colvet";
		break;
	case 10:
		if ( dt.getDate() <= 10 )
			currentClosings = "colvet";
		else
			currentClosings = "vet";
		break;
	case 11:
		if ( dt.getDate() <= 24 )
			currentClosings = "thanksgiving";
		else {
			currentClosings = "holiday";
			imgCalendar = "weather";
		}
		break;
	case 12:
		currentClosings = "holiday";
		imgCalendar = "weather";
		break;
	default:
		currentClosings = "";
		imgCalendar = "";
		break;
}

if ( currentClosings.length > 0 ) {
%>
							<li class="closings clearfix">
								<h3>Upcoming Closings</h3>
<%
	if ( imgCalendar == "calendar" ) {
%>
								<img src="images/calendar_daily_small.jpg" alt="calendar" />
<%
	} else {
%>
								<img src="images/snowflake.jpg" alt="snowflake" />
<%
	}
%>
								<dl>
<%
	if ( currentClosings == "mlkpres" ) {
%>
									<dt>Martin Luther King Day</dt>
									<dd>Monday, January 18</dd>
									<dt>President&#39;s Day</dt>
									<dd>Monday, February 15</dd>
<%
	} else if ( currentClosings == "memind" ) {
%>
                                    <dt>Good Friday</dt>
                                    <dd>Friday, Apr 2</dd>
									<dt>Memorial Day</dt>
									<dd>Monday, May 31</dd>
									<dt>Independence Day</dt>
									<dd>Monday, July 5</dd>
<%
	} else if ( currentClosings == "ind" ) {
%>
									<dt>Independence Day</dt>
									<dd>Monday, July 5</dd>
<%
	} else if ( currentClosings == "labor" ) {
%>
									<dt>Labor Day</dt>
									<dd>Monday, September 6</dd>
<%
	} else if ( currentClosings == "colvet" ) {
%>
									<dt>Columbus Day</dt>
									<dd>Monday, October 11</dd>
									<dt>Veteran&#39;s Day</dt>
									<dd>Thursday, November 11</dd>
<%
	} else if ( currentClosings == "vet" ) {
%>
									<dt>Veteran&#39;s Day</dt>
									<dd>Thursday, November 11</dd>
<%
	} else if ( currentClosings == "thanksgiving" ) {
%>
									<dt>Thanksgiving Day</dt>
									<dd>Thursday, November 25</dd>
									<dt>Day after Thanksgiving</dt>
									<dd>Friday, November 26</dd>
<%
	} else if ( currentClosings == "holiday" ) {
%>
									<dt>Christmas Eve</dt>
									<dd>Friday, December 24</dt>
									<dt>Christmas Eve</dt>
									<dd>Friday, December 31</dd>
									<dt>New Years Eve</dt>
									<dd>Thursday, December 31<br />Closing at 1pm</dd>
<%
	}
%>
								</dl>
							</li>
<%
}
%>