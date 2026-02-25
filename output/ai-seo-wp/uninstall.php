<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpseoai_log');
delete_site_option('wpseoai_log');
delete_option('wpseoai_debug');
delete_site_option('wpseoai_debug');
delete_option('wpseoai_credit');
delete_site_option('wpseoai_credit');
delete_option('wpseoai_host');
delete_site_option('wpseoai_host');
delete_option('wpseoai_subscription_id');
delete_site_option('wpseoai_subscription_id');
delete_option('wpseoai_secret');
delete_site_option('wpseoai_secret');
delete_option('wpseoai_llm');
delete_site_option('wpseoai_llm');
delete_option('wpseoai_mode');
delete_site_option('wpseoai_mode');
delete_option('wpseoai_return_host');
delete_site_option('wpseoai_return_host');

