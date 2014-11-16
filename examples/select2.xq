xquery version "3.0";

(:~
 : Origami extract example
 :
 : Extract returns no duplicates.
 :)
import module namespace xf = 'http://xokomola.com/xquery/origami'
    at '../core.xqm';

let $extract :=
  xf:extract((
    xf:select('li[@id="last"]'), 
    xf:select('li')))
 
let $input :=
  document {
    <ul>
      <li id="first">item 1</li>
      <li>item 2</li>
      <li id="last">item 3</li>
    </ul>    
  }
 
return prof:time($extract($input))