// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce : Please, do not edit this file
// ----------------------------------------------------------------------------
//
mavlink_slb_path = get_absolute_file_path('loader.sce');
//
// ulink previous function with same name
[bOK, ilib] = c_link('mavlink_slb');
if bOK then
  ulink(ilib);
end
//
link(mavlink_slb_path + 'libmavlink_slb' + getdynlibext(), ['mavlink_slb'],'c');
// remove temp. variables on stack
clear mavlink_slb_path;
clear bOK;
clear ilib;
// ----------------------------------------------------------------------------
