<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kdbm_pbfl_settings');
delete_site_option('kdbm_pbfl_settings');
delete_option('kdbm_pbfl_admin_email');
delete_site_option('kdbm_pbfl_admin_email');
delete_option('kdbm_pbfl_unlock_email');
delete_site_option('kdbm_pbfl_unlock_email');

