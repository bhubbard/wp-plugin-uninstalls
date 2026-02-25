<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('raeven_b');
delete_site_option('raeven_b');
delete_option('raodd_b');
delete_site_option('raodd_b');
delete_option('caeven_b');
delete_site_option('caeven_b');
delete_option('caodd_b');
delete_site_option('caodd_b');
delete_option('fcfrcolumn_b');
delete_site_option('fcfrcolumn_b');
delete_option('fcfrrow_b');
delete_site_option('fcfrrow_b');
delete_option('customizeSettingB');
delete_site_option('customizeSettingB');

