<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vbout_tracking_activated');
delete_site_option('vbout_tracking_activated');
delete_option('vbout_status');
delete_site_option('vbout_status');
delete_option('vbout_plugin_version');
delete_site_option('vbout_plugin_version');
delete_option('vbout_last_nonce');
delete_site_option('vbout_last_nonce');
delete_option('vbout_api_business');
delete_site_option('vbout_api_business');
delete_option('vbout_flash_message');
delete_site_option('vbout_flash_message');
delete_option('vbout_sm_channels');
delete_site_option('vbout_sm_channels');
delete_option('vbout_em_lists');
delete_site_option('vbout_em_lists');
delete_option('vbout_em_forms_default');
delete_site_option('vbout_em_forms_default');
delete_option('vbout_current_tab');
delete_site_option('vbout_current_tab');
delete_option('vbout_tracking_domains');
delete_site_option('vbout_tracking_domains');
delete_option('vbout_method');
delete_site_option('vbout_method');
delete_option('vbout_userkey');
delete_site_option('vbout_userkey');
delete_option('vbout_appkey');
delete_site_option('vbout_appkey');
delete_option('vbout_clientsecret');
delete_site_option('vbout_clientsecret');
delete_option('vbout_authtoken');
delete_site_option('vbout_authtoken');
delete_option('vbout_plugin_availability');
delete_site_option('vbout_plugin_availability');
delete_option('vbout_plugin_attachment');
delete_site_option('vbout_plugin_attachment');
delete_option('vbout_sm_activated');
delete_site_option('vbout_sm_activated');
delete_option('vbout_em_activated');
delete_site_option('vbout_em_activated');
delete_option('vbout_tracking_code');
delete_site_option('vbout_tracking_code');
delete_option('vbout_em_forms');
delete_site_option('vbout_em_forms');
delete_option('vbout_em_emailname');
delete_site_option('vbout_em_emailname');
delete_option('vbout_em_emailsubject');
delete_site_option('vbout_em_emailsubject');
delete_option('vbout_em_fromemail');
delete_site_option('vbout_em_fromemail');
delete_option('vbout_em_fromname');
delete_site_option('vbout_em_fromname');
delete_option('vbout_em_replyto');
delete_site_option('vbout_em_replyto');
delete_option('vbout_sync_emaillist');
delete_site_option('vbout_sync_emaillist');
delete_option('vbout_sync_exclude_ids');
delete_site_option('vbout_sync_exclude_ids');
delete_option('vbout_tracking_domain');
delete_site_option('vbout_tracking_domain');
delete_option('vbout_sync_exclude_listid');
delete_site_option('vbout_sync_exclude_listid');

// Clear Cron Jobs
wp_clear_scheduled_hook('synchronize_wp_users_hook');

