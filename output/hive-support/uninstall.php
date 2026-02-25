<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hs_default_mailbox_id');
delete_site_option('hs_default_mailbox_id');
delete_option('hs_global_settings');
delete_site_option('hs_global_settings');
delete_option('hs_support_page_url');
delete_site_option('hs_support_page_url');
delete_option('hs_help_tab_data');
delete_site_option('hs_help_tab_data');
delete_option('hs_messaging_tab_data');
delete_site_option('hs_messaging_tab_data');
delete_option('hs_home_tab_data');
delete_site_option('hs_home_tab_data');
delete_option('hs_ai_chat_settings');
delete_site_option('hs_ai_chat_settings');
delete_option('hive_support_license_expires');
delete_site_option('hive_support_license_expires');
delete_option('hs_setup_welcome_wizard');
delete_site_option('hs_setup_welcome_wizard');
delete_option('hive_lite_support_version');
delete_site_option('hive_lite_support_version');
delete_option('hive_lite_do_activation_redirect');
delete_site_option('hive_lite_do_activation_redirect');
delete_option('hs_db_version_update_check');
delete_site_option('hs_db_version_update_check');
delete_option('hs_db_mailbox_update_check');
delete_site_option('hs_db_mailbox_update_check');
delete_option('hs_db_ticket_seencol_update');
delete_site_option('hs_db_ticket_seencol_update');
delete_option('hs_db_conversations_seencol_update');
delete_site_option('hs_db_conversations_seencol_update');
delete_option('hs_db_mailbox_status_col_update');
delete_site_option('hs_db_mailbox_status_col_update');
delete_option('hs_db_mailbox_server_cron_job_update');
delete_site_option('hs_db_mailbox_server_cron_job_update');
delete_option('hive_lite_support_ticketfield_settings');
delete_site_option('hive_lite_support_ticketfield_settings');
delete_option('hive_lite_support_email_msgid');
delete_site_option('hive_lite_support_email_msgid');
delete_option('hive_lite_support_email_tickets');
delete_site_option('hive_lite_support_email_tickets');
delete_option('hive_lite_support_agents');
delete_site_option('hive_lite_support_agents');
delete_option('hive_lite_support_agent_settings');
delete_site_option('hive_lite_support_agent_settings');
delete_option('hive_lite_support_tickets');
delete_site_option('hive_lite_support_tickets');
delete_option('hive_lite_support_ticket_settings');
delete_site_option('hive_lite_support_ticket_settings');
delete_option('hive_lite_support_ticket_todos');
delete_site_option('hive_lite_support_ticket_todos');
delete_option('hive_lite_support_responses');
delete_site_option('hive_lite_support_responses');
delete_option('hive_lite_support_activities');
delete_site_option('hive_lite_support_activities');
delete_option('hive_lite_support_automation');
delete_site_option('hive_lite_support_automation');
delete_option('hive_lite_support_settings');
delete_site_option('hive_lite_support_settings');
delete_option('hive_lite_support_intrigations');
delete_site_option('hive_lite_support_intrigations');
delete_option('hive_lite_support_license_key');
delete_site_option('hive_lite_support_license_key');
delete_option('hive_lite_support_skey');
delete_site_option('hive_lite_support_skey');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hs_agent_job_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hs_agent_job_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hs_agent_job_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hs_agent_job_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hs_agent_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hs_agent_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hs_agent_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hs_agent_permissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hs_agent_slack_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hs_agent_slack_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hs_agent_slack_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hs_agent_slack_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hs_agent_telegram_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hs_agent_telegram_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hs_agent_telegram_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hs_agent_telegram_id' ) );

