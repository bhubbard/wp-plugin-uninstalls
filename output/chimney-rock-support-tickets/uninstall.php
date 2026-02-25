<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crm_support_tickets_plugin_version');
delete_site_option('crm_support_tickets_plugin_version');
delete_option('crm_support_tickets_db_version');
delete_site_option('crm_support_tickets_db_version');
delete_option('crm_support_tickets_agent_roles');
delete_site_option('crm_support_tickets_agent_roles');
delete_option('crm_pro_support_tickets_license_key');
delete_site_option('crm_pro_support_tickets_license_key');
delete_option('crm_support_tickets_slug_to_tickets');
delete_site_option('crm_support_tickets_slug_to_tickets');
delete_option('crm_support_tickets_enable_admin_email');
delete_site_option('crm_support_tickets_enable_admin_email');
delete_option('crm_support_tickets_enable_customer_email');
delete_site_option('crm_support_tickets_enable_customer_email');
delete_option('crm_support_tickets_email_from_name');
delete_site_option('crm_support_tickets_email_from_name');
delete_option('crm_support_tickets_from_email');
delete_site_option('crm_support_tickets_from_email');
delete_option('crm_support_tickets_enable_auto_close');
delete_site_option('crm_support_tickets_enable_auto_close');
delete_option('crm_support_tickets_auto_close_days');
delete_site_option('crm_support_tickets_auto_close_days');
delete_option('crm_support_tickets_enable_captcha');
delete_site_option('crm_support_tickets_enable_captcha');
delete_option('crm_support_tickets_captcha_site_key');
delete_site_option('crm_support_tickets_captcha_site_key');
delete_option('crm_support_tickets_captcha_secret_key');
delete_site_option('crm_support_tickets_captcha_secret_key');
delete_option('crm_support_tickets_delete_all_uninstall');
delete_site_option('crm_support_tickets_delete_all_uninstall');

// Clear Cron Jobs
wp_clear_scheduled_hook('crm_support_tickets_autoclose_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crm_ticket_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crm_ticket_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crm_ticket_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crm_ticket_priority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crm_ticket_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crm_ticket_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crm_ticket_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crm_ticket_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crm_ticket_agent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crm_ticket_agent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crm_ticket_agent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crm_ticket_agent_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crm_ticket_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crm_ticket_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crm_ticket_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crm_ticket_customer_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crm_ticket_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crm_ticket_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crm_ticket_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crm_ticket_subject' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crm_ticket_customer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crm_ticket_customer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crm_ticket_customer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crm_ticket_customer_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crm_ticket_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crm_ticket_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crm_ticket_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crm_ticket_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'crm_ticket_agent_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'crm_ticket_agent_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'crm_ticket_agent_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'crm_ticket_agent_name' ) );

