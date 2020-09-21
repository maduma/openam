<%
response.setStatus(301);
response.setHeader( "Location", "/openam" );
response.setHeader( "Connection", "close" );
%>
