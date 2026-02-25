<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('popcash_net_uid');
delete_site_option('popcash_net_uid');
delete_option('popcash_net_api_key');
delete_site_option('popcash_net_api_key');
delete_option('popcash_net_wid');
delete_site_option('popcash_net_wid');
delete_option('popcash_net_fallback');
delete_site_option('popcash_net_fallback');
delete_option('popcash_net_textarea');
delete_site_option('popcash_net_textarea');
delete_option('popcash_net_integration');
delete_site_option('popcash_net_integration');
delete_option('popcash_net_disabled');
delete_site_option('popcash_net_disabled');
delete_option('popcash_net_fcap');
delete_site_option('popcash_net_fcap');

