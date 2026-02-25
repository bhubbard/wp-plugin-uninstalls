<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zefw_element_id_counter');
delete_site_option('zefw_element_id_counter');
delete_option('zefw-default-email-address');
delete_site_option('zefw-default-email-address');
delete_option('zefw_custom_emails_table_version');
delete_site_option('zefw_custom_emails_table_version');

