<table>

<tr>
<th class="command"><a href="$URLSegment/sortCommand/TermCommand/ASC" onclick="$('#ajaxContent').load('$URLSegment/sortCommand/TermCommand/ASC'); return false;">Term Command</a></th>
<th class="example"><a href="$URLSegment/sortCommand/Example/ASC" onclick="$('#ajaxContent').load('$URLSegment/sortCommand/Example/ASC'); return false;">Example</th>
<th class="description"><a href="$URLSegment/sortCommand/TermDescription/ASC" onclick="$('#ajaxContent').load('$URLSegment/sortCommand/TermDescription/ASC'); return false;">TermDescription</th>

</tr>


<% control Terms %>

<tr>
<td class="command"><pre>$TermCommand</pre></td>
<td class="example"><pre>$Example</pre></td>
<td class="description"><p>$TermDescription</p></td>

</tr>

	
<% end_control %>


</table>