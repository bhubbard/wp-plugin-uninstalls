<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ui_analytics_id');
delete_site_option('ui_analytics_id');
delete_option('ui_additional_tag');
delete_site_option('ui_additional_tag');

