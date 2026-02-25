<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('konncofo_name_enabled');
delete_site_option('konncofo_name_enabled');
delete_option('konncofo_name_label');
delete_site_option('konncofo_name_label');
delete_option('konncofo_name_required');
delete_site_option('konncofo_name_required');
delete_option('konncofo_name_placeholder');
delete_site_option('konncofo_name_placeholder');
delete_option('konncofo_email_enabled');
delete_site_option('konncofo_email_enabled');
delete_option('konncofo_email_label');
delete_site_option('konncofo_email_label');
delete_option('konncofo_email_required');
delete_site_option('konncofo_email_required');
delete_option('konncofo_email_placeholder');
delete_site_option('konncofo_email_placeholder');
delete_option('konncofo_phone_enabled');
delete_site_option('konncofo_phone_enabled');
delete_option('konncofo_phone_label');
delete_site_option('konncofo_phone_label');
delete_option('konncofo_phone_required');
delete_site_option('konncofo_phone_required');
delete_option('konncofo_phone_placeholder');
delete_site_option('konncofo_phone_placeholder');
delete_option('konncofo_address_enabled');
delete_site_option('konncofo_address_enabled');
delete_option('konncofo_address_label');
delete_site_option('konncofo_address_label');
delete_option('konncofo_address_required');
delete_site_option('konncofo_address_required');
delete_option('konncofo_address_placeholder');
delete_site_option('konncofo_address_placeholder');
delete_option('konncofo_message_enabled');
delete_site_option('konncofo_message_enabled');
delete_option('konncofo_message_label');
delete_site_option('konncofo_message_label');
delete_option('konncofo_message_required');
delete_site_option('konncofo_message_required');
delete_option('konncofo_message_placeholder');
delete_site_option('konncofo_message_placeholder');
delete_option('konncofo_submit_text');
delete_site_option('konncofo_submit_text');
delete_option('konncofo_success_message');
delete_site_option('konncofo_success_message');

