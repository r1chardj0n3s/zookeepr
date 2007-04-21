<&| @zookeepr.lib.form:fill, defaults=defaults, errors=errors &>
<h2>Submit a Proposal</h2>
<p>First, tell us a bit about yourself:</p>
<p><em>Note: These are common for all your proposals</em></p>


<table class="form" summary="submission form" >
<% h.form(h.url(), multipart=True) %>
<& form.myt &>
<tr>
	<td>&nbsp;</td>
	<td class="submit"><% h.submit('Participate!') %></td>
</tr>
</table>
<% h.end_form() %>
</&>

<%method title>
Call for Participation - <& PARENT:title &>
</%method>

<%args>
defaults
errors
</%args>

<%init>
# Working around a bug in formencode, we need to set the defaults to the c.proposal
# values
if not defaults:
    defaults = {
        'person.experience': c.person.experience,
        'person.bio': c.person.bio
    }
</%init>
