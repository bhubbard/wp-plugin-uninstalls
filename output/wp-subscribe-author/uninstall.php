<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsa_subscribe_author_db_version');
delete_site_option('wpsa_subscribe_author_db_version');
delete_option('wpsa_mail_settings');
delete_site_option('wpsa_mail_settings');
delete_option('wpsa_general_settings');
delete_site_option('wpsa_general_settings');

