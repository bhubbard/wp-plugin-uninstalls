<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clickcease_whitelist');
delete_site_option('clickcease_whitelist');
delete_option('clickcease_bot_zapping_authenticated');
delete_site_option('clickcease_bot_zapping_authenticated');
delete_option('clickcease_api_key');
delete_site_option('clickcease_api_key');
delete_option('clickcease_domain_key');
delete_site_option('clickcease_domain_key');
delete_option('clickcease_secret_key');
delete_site_option('clickcease_secret_key');
delete_option('cheq_invalid_secret');
delete_site_option('cheq_invalid_secret');
delete_option('monitoring');
delete_site_option('monitoring');
delete_option('cc_version_updated');
delete_site_option('cc_version_updated');
delete_option('installTag');
delete_site_option('installTag');
delete_option('cc_send_plugin_state');
delete_site_option('cc_send_plugin_state');
delete_option('cc_check_plugin_state');
delete_site_option('cc_check_plugin_state');
delete_option('clickcease_remove_tracking');
delete_site_option('clickcease_remove_tracking');
delete_option('clickcease_client_id');
delete_site_option('clickcease_client_id');
delete_option('secret_checked');
delete_site_option('secret_checked');

