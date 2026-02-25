<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alojapro_settings');
delete_site_option('alojapro_settings');
delete_option('alojapro_config');
delete_site_option('alojapro_config');
delete_option('alojapro_integration');
delete_site_option('alojapro_integration');
delete_option('alojapro_comments');
delete_site_option('alojapro_comments');
delete_option('alojapro_offers');
delete_site_option('alojapro_offers');

