<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('evp_enable_jquery');
delete_site_option('evp_enable_jquery');
delete_option('evp_schet');
delete_site_option('evp_schet');
delete_option('evp_download');
delete_site_option('evp_download');
delete_option('evp_speed');
delete_site_option('evp_speed');
delete_option('evp_pict');
delete_site_option('evp_pict');
delete_option('evp_volume');
delete_site_option('evp_volume');
delete_option('evp_url_rekl');
delete_site_option('evp_url_rekl');

