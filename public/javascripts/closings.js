	var currentClosings = "";
	var imgCalendar = "calendar";
	var dt = new Date();
	if ((dt.getMonth() + 1) == 1)
		currentClosings = "mlkpres"; 
	else if ((dt.getMonth() + 1) == 5)
		currentClosings = "memind"; 
	else if ((dt.getMonth() + 1) == 6)
		currentClosings = "ind";
	else if ((dt.getMonth() + 1) == 7)
	{
		if ( dt.getDate() < 6 )
			currentClosings = "ind";
		else
			currentClosings = "labor";
	}
	else if ((dt.getMonth() + 1) == 8)
		currentClosings = "labor";
	else if ((dt.getMonth() + 1) == 9)
	{
		if ( dt.getDate() == 1 )
				currentClosings = "labor";
			else
				currentClosings = "colvet";
	}
	else if ((dt.getMonth() + 1) == 10)
	{
		if ( dt.getDate() <= 10 )
				currentClosings = "colvet";
			else
				currentClosings = "vet";
	}
	else if ((dt.getMonth() + 1) == 11)
	{
		if ( dt.getDate() <= 24 )
				currentClosings = "thanksgiving";
			else {
				currentClosings = "holiday";
				imgCalendar = "weather";
			}
	}
	else if ((dt.getMonth() + 1) == 12)
	{
		currentClosings = "holiday";
		imgCalendar = "weather";
	}
	else
	{
		currentClosings = "";
		imgCalendar = "";
	}
		
	if ( currentClosings.length > 0 ) 
	{
		document.write("<li class='closings clearfix'>");
		document.write("<h3>Upcoming Closings</h3>");
		if ( imgCalendar == "calendar" ) {
			document.write("<img src='images/calendar_daily_small.jpg' alt='calendar' />");
		} else {
			document.write("<img src='images/snowflake.jpg' alt='snowflake' />");
		}
		document.write("<dl>");
		if ( currentClosings == "mlkpres" ) 
		{
			document.write("<dt>Martin Luther King Day</dt>");
			document.write("<dd>Monday, January 18</dd>");
			document.write("<dt>President&#39;s Day</dt>");
			document.write("<dd>Monday, February 15</dd>");
		} else if ( currentClosings == "memind" ) 
		{
			document.write("<dt>Good Friday</dt>");
			document.write("<dd>Friday, Apr 2</dd>");
			document.write("<dt>Memorial Day</dt>");
			document.write("<dd>Monday, May 31</dd>");
			document.write("<dt>Independence Day</dt>");
			document.write("<dd>Monday, July 5</dd>");
		} else if ( currentClosings == "ind" ) {
			document.write("<dt>Independence Day</dt>");
			document.write("<dd>Monday, July 5</dd>");
		} else if ( currentClosings == "labor" ) {
			document.write("<dt>Labor Day</dt>");
			document.write("<dd>Monday, September 6</dd>");
		} else if ( currentClosings == "colvet" ) {
			document.write("<dt>Columbus Day</dt>");
			document.write("<dd>Monday, October 11</dd>");
			document.write("<dt>Veteran&#39;s Day</dt>");
			document.write("<dd>Thursday, November 11</dd>");
		} else if ( currentClosings == "vet" ) {
			document.write("<dt>Veteran&#39;s Day</dt>");
			document.write("<dd>Thursday, November 11</dd>");
		} else if ( currentClosings == "thanksgiving" ) {
			document.write("<dt>Thanksgiving Day</dt>");
			document.write("<dd>Thursday, November 25</dd>");
			document.write("<dt>Day after Thanksgiving</dt>");
			document.write("<dd>Friday, November 26</dd>");
		} else if ( currentClosings == "holiday" ) {
			document.write("<dt>Christmas Eve</dt>");
			document.write("<dd>Friday, December 24</dd>");
			document.write("<dt>Christmas Eve</dt>");
			document.write("<dd>Friday, December 31</dd>");
			document.write("<dt>New Years Eve</dt>");
			document.write("<dd>Thursday, December 31<br />Closing at 1pm</dd>");
		}
		document.write("</dl>");
		document.write("</li>");
	}
