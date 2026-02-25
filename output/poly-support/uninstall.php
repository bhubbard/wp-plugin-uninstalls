<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('poly_support_active_templates');
delete_site_option('poly_support_active_templates');
delete_option('poly_support_templates');
delete_site_option('poly_support_templates');
delete_option('poly_support_media');
delete_site_option('poly_support_media');

