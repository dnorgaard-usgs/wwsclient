<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
  <application xmlns="http://wadl.dev.java.net/2009/02">
    <doc title="FDSN dataselect web service 1.1"/>
    <resources base="http://${host}/fdsnws/dataselect/1/">
      <resource path="/">
        <method name="GET" id="root">
          <response>
            <representation mediaType="text/html"/>
          </response>
        </method>
      </resource>
      <resource path="query">
        <method name="GET" id="query">
		  <request>
		    <param name="starttime" style="query" required="true" type="xs:date"/>
		    <param name="endtime" style="query" required="true" type="xs:date"/>
		    <param name="network" style="query"  type="xs:string"/>
		    <param name="station" style="query"  type="xs:string"/>
		    <param name="location" style="query" type="xs:string"/>
		    <param name="channel" style="query" type="xs:string"/>
	      </request>
          <response>
            <representation mediaType="text/plain"/>
            <representation mediaType="application/vnd.fdsn.mseed"/>
          </response>
        </method>
        <method name="POST" id="postQuery">
          <request>
            <representation mediaType="*/*"/>
          </request>
          <response>
            <representation mediaType="text/plain"/>
            <representation mediaType="application/vnd.fdsn.mseed"/>
          </response>
        </method>
      </resource>
      <resource path="version">
        <method name="GET" id="version">
          <response>
            <representation mediaType="text/plain"/>
          </response>
        </method>
      </resource>
      <resource path="application.wadl">
        <method name="GET" id="application.wadl">
          <response>
            <representation mediaType="application/xml"/>
          </response>
        </method>
      </resource>
  </resources>
</application>
