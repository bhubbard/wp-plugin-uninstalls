<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcorgbotdetector_dbversion');
delete_site_option('jcorgbotdetector_dbversion');
delete_option('jcorgbotdetector_db_version');
delete_site_option('jcorgbotdetector_db_version');
delete_option('jcorgbotdetector_last_email_sent');
delete_site_option('jcorgbotdetector_last_email_sent');
delete_option('jcorgbotdetector_email_interval');
delete_site_option('jcorgbotdetector_email_interval');
delete_option('jcorgbotdetector_email_format');
delete_site_option('jcorgbotdetector_email_format');
delete_option('jcorgbotdetector_history_to_keep');
delete_site_option('jcorgbotdetector_history_to_keep');
delete_option('jcorgbotdetector_email');
delete_site_option('jcorgbotdetector_email');

