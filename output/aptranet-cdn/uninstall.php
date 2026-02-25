<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aptranet_cdn_distribution');
delete_site_option('aptranet_cdn_distribution');
delete_option('aptranet_cdn_distribution_name');
delete_site_option('aptranet_cdn_distribution_name');
delete_option('aptranet_cdn_access_key');
delete_site_option('aptranet_cdn_access_key');
delete_option('aptranet_cdn_secret');
delete_site_option('aptranet_cdn_secret');
delete_option('aptranet_cdn_enable');
delete_site_option('aptranet_cdn_enable');
delete_option('aptranet_cdn_base_url');
delete_site_option('aptranet_cdn_base_url');

