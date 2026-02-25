<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Spider_Zoom_tag');
delete_site_option('Spider_Zoom_tag');
delete_option('Spider_Zoom_class');
delete_site_option('Spider_Zoom_class');
delete_option('Spider_Zoom_id');
delete_site_option('Spider_Zoom_id');
delete_option('Spider_Zoom_max');
delete_site_option('Spider_Zoom_max');
delete_option('Spider_Zoom_min');
delete_site_option('Spider_Zoom_min');
delete_option('Spider_Zoom_imggroup');
delete_site_option('Spider_Zoom_imggroup');
delete_option('Spider_Zoom_imgsize');
delete_site_option('Spider_Zoom_imgsize');
delete_option('Spider_Zoom_title');
delete_site_option('Spider_Zoom_title');

