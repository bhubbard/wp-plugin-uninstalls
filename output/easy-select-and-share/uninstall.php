<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asas_settings');
delete_site_option('asas_settings');
delete_option('asas_social_order');
delete_site_option('asas_social_order');

