<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_settings_of_annotation_by_country');
delete_site_option('_settings_of_annotation_by_country');

