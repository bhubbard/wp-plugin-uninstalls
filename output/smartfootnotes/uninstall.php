<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smart_footnotes_style');
delete_site_option('smart_footnotes_style');
delete_option('smart_footnotes_popup_style');
delete_site_option('smart_footnotes_popup_style');
delete_option('smart_footnotes_heading');
delete_site_option('smart_footnotes_heading');
delete_option('smart_footnotes_return_text');
delete_site_option('smart_footnotes_return_text');
delete_option('smart_footnotes_custom_css');
delete_site_option('smart_footnotes_custom_css');
delete_option('smart_footnotes_show_list');
delete_site_option('smart_footnotes_show_list');

