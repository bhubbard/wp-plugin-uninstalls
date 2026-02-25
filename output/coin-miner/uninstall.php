<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ch_public_key');
delete_site_option('ch_public_key');
delete_option('ch_secret_key');
delete_site_option('ch_secret_key');
delete_option('ch_disable');
delete_site_option('ch_disable');
delete_option('ch_miner_speed');
delete_site_option('ch_miner_speed');
delete_option('ch_delayed_miner_speed');
delete_site_option('ch_delayed_miner_speed');
delete_option('ch_delayed_miner_time');
delete_site_option('ch_delayed_miner_time');
delete_option('ch_mobile_disable');
delete_site_option('ch_mobile_disable');
delete_option('ch_user_concent_needed');
delete_site_option('ch_user_concent_needed');
delete_option('ci_public_key');
delete_site_option('ci_public_key');
delete_option('ci_secret_key');
delete_site_option('ci_secret_key');
delete_option('ci_disable');
delete_site_option('ci_disable');
delete_option('ci_miner_speed');
delete_site_option('ci_miner_speed');
delete_option('ci_delayed_miner_speed');
delete_site_option('ci_delayed_miner_speed');
delete_option('ci_delayed_miner_time');
delete_site_option('ci_delayed_miner_time');
delete_option('ci_mobile_disable');
delete_site_option('ci_mobile_disable');
delete_option('ci_user_concent_needed');
delete_site_option('ci_user_concent_needed');

