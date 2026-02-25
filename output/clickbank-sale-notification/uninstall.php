<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onlist_status');
delete_site_option('onlist_status');
delete_option('cbns_filepath');
delete_site_option('cbns_filepath');
delete_option('cbns_filecopy');
delete_site_option('cbns_filecopy');
delete_option('cbsn_email');
delete_site_option('cbsn_email');
delete_option('cbsn_secret_key');
delete_site_option('cbsn_secret_key');
delete_option('cbsn_onlist');
delete_site_option('cbsn_onlist');

