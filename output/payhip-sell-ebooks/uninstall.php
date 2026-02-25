<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pf_json_resp');
delete_site_option('pf_json_resp');
delete_option('pf_payhip_username');
delete_site_option('pf_payhip_username');
delete_option('pf_affiliate_id');
delete_site_option('pf_affiliate_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('pf_curl_cron_action');

