<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wnm_db_version');
delete_site_option('wnm_db_version');
delete_option('kbcf_settings_email');
delete_site_option('kbcf_settings_email');

