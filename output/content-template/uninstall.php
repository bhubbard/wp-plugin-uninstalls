<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content_template_data');
delete_site_option('content_template_data');
delete_option('content_template_db_version');
delete_site_option('content_template_db_version');

