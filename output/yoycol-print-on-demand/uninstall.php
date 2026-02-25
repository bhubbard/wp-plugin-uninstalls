<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yoycol_domain');
delete_site_option('yoycol_domain');
delete_option('yoycol_salt');
delete_site_option('yoycol_salt');
delete_option('yoycol_access_key');
delete_site_option('yoycol_access_key');
delete_option('yoycol_access_token');
delete_site_option('yoycol_access_token');
delete_option('yoycol_store_id');
delete_site_option('yoycol_store_id');

