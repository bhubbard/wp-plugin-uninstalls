<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcc_gravity_form_lawmatics_ignore_spam_entry');
delete_site_option('wcc_gravity_form_lawmatics_ignore_spam_entry');
delete_option('gf_db_version');
delete_site_option('gf_db_version');
delete_option('wcc_gf_lawmatics_notification_send_to');
delete_site_option('wcc_gf_lawmatics_notification_send_to');
delete_option('wcc_gf_lawmatics_notification_subject');
delete_site_option('wcc_gf_lawmatics_notification_subject');
delete_option('wcc_gf_lawmatics_debug');
delete_site_option('wcc_gf_lawmatics_debug');
delete_option('wcc_gravity_form_lawmatics_notification_send_to	');
delete_site_option('wcc_gravity_form_lawmatics_notification_send_to	');
delete_option('wcc_gravity_form_lawmatics_notification_subject');
delete_site_option('wcc_gravity_form_lawmatics_notification_subject');
delete_option('wcc_gravity_form_lawmatics_debug');
delete_site_option('wcc_gravity_form_lawmatics_debug');
delete_option('wcc_gravity_form_lawmatics_uninstall');
delete_site_option('wcc_gravity_form_lawmatics_uninstall');
delete_option('wcc_gravity_form_lawmatics_db_version');
delete_site_option('wcc_gravity_form_lawmatics_db_version');

