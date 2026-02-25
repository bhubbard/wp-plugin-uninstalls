<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swf_version');
delete_site_option('swf_version');
delete_option('swf_bgcolor');
delete_site_option('swf_bgcolor');
delete_option('swf_wmode');
delete_site_option('swf_wmode');
delete_option('swf_menu');
delete_site_option('swf_menu');
delete_option('swf_quality');
delete_site_option('swf_quality');
delete_option('swf_fullscreen');
delete_site_option('swf_fullscreen');
delete_option('swf_scriptaccess');
delete_site_option('swf_scriptaccess');
delete_option('swf_align');
delete_site_option('swf_align');
delete_option('swf_message');
delete_site_option('swf_message');
delete_option('swf_file');
delete_site_option('swf_file');
delete_option('swf_showinfo');
delete_site_option('swf_showinfo');
delete_option('swf_annotations');
delete_site_option('swf_annotations');
delete_option('swf_loading');
delete_site_option('swf_loading');
delete_option('swf_msgiphone');
delete_site_option('swf_msgiphone');

