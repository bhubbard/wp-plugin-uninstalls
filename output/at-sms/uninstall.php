<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('at_sms_do_activation_redirect');
delete_site_option('at_sms_do_activation_redirect');
delete_option('at_sms_database_version');
delete_site_option('at_sms_database_version');
delete_option('at_sms_contact_groups');
delete_site_option('at_sms_contact_groups');
delete_option('at_sms_options');
delete_site_option('at_sms_options');

