<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('currpate_current_page_template_viewer_options');
delete_site_option('currpate_current_page_template_viewer_options');
delete_option('current_page_template_viewer_options');
delete_site_option('current_page_template_viewer_options');

