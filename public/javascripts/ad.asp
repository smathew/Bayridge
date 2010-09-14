<%
var dt = new Date();
var currentAd = null;
switch ( dt.getMonth() + 1 ) {
	case 1:
	case 2:
	case 3:
		currentAd = "taxes";
		break;
	case 4:
		if ( dt.getDate() <= 15 )
			currentAd = "taxes";
		else
			currentAd = "auto";
		break;
	case 5:
	case 6:
		currentAd = "auto";
		break;
	case 7:
		if ( dt.getDate() <= 15 )
			currentAd = "auto";
		else
			currentAd = "heloc";
		break;
	case 8:
	case 9:
		currentAd = "heloc";
		break;
	case 10:
		if ( dt.getDate() <= 15 )
			currentAd = "heloc";
		else
			currentAd = "personal";
		break;
	case 11:
	case 12:
		currentAd = "personal";
		break;
}

switch ( currentAd ) {
	case "taxes":
%>
							<img src="images/cuttaxes.gif" alt="" />
<%
		break;
	case "auto":
%>
							<a href="rates_loans.htm#auto_loans">
								<img src="images/carloan.gif" alt="" />
							</a>
<%
		break;
	case "heloc":
%>
							<img src="images/unlockdreams.gif" alt="" />
<%
		break;
	case "personal":
%>
							<img src="images/holiday_personal.gif" alt="" />
<%
		break;
}
%>