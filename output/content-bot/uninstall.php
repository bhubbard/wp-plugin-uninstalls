<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbai_hash');
delete_site_option('cbai_hash');
delete_option('cbai_otl');
delete_site_option('cbai_otl');
delete_option('cbai_account');
delete_site_option('cbai_account');
delete_option('cbai_website');
delete_site_option('cbai_website');
delete_option('cbai_version');
delete_site_option('cbai_version');
delete_option('cbai_model');
delete_site_option('cbai_model');

