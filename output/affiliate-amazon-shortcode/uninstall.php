<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affiamsh_cache_ver');
delete_site_option('affiamsh_cache_ver');
delete_option('affiamsh_plugin_settings');
delete_site_option('affiamsh_plugin_settings');
delete_option('affiamsh_pro_display_options');
delete_site_option('affiamsh_pro_display_options');
delete_option('affiamsh_is_pro');
delete_site_option('affiamsh_is_pro');
delete_option('affiamsh_license_key');
delete_site_option('affiamsh_license_key');

