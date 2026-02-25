<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mp3folder');
delete_site_option('mp3folder');
delete_option('calculateprefix');
delete_site_option('calculateprefix');
delete_option('markuptemplate');
delete_site_option('markuptemplate');
delete_option('customcss');
delete_site_option('customcss');
delete_option('replaceheaders');
delete_site_option('replaceheaders');
delete_option('mediaextensions');
delete_site_option('mediaextensions');
delete_option('packageextensions');
delete_site_option('packageextensions');
delete_option('showcover');
delete_site_option('showcover');
delete_option('showfeatured');
delete_site_option('showfeatured');
delete_option('embedwhere');
delete_site_option('embedwhere');
delete_option('tagencoding');
delete_site_option('tagencoding');
delete_option('filenameencoding');
delete_site_option('filenameencoding');
delete_option('sortfiles');
delete_site_option('sortfiles');
delete_option('reversefiles');
delete_site_option('reversefiles');
delete_option('showtags');
delete_site_option('showtags');
delete_option('covermarkup');
delete_site_option('covermarkup');
delete_option('downloadtext');
delete_site_option('downloadtext');
delete_option('playtext');
delete_site_option('playtext');
delete_option('stoptext');
delete_site_option('stoptext');
delete_option('removeextension');
delete_site_option('removeextension');
delete_option('packagetitle');
delete_site_option('packagetitle');
delete_option('packagetexts');
delete_site_option('packagetexts');
delete_option('embedplayer');
delete_site_option('embedplayer');
delete_option('autoplaylist');
delete_site_option('autoplaylist');
delete_option('handlefeed');
delete_site_option('handlefeed');
delete_option('cachedir');
delete_site_option('cachedir');
delete_option('overwritefeedlink');
delete_site_option('overwritefeedlink');

