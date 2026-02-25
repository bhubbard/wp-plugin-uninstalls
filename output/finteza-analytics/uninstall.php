<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('finteza_settings');
delete_site_option('finteza_settings');
delete_option('finteza_register');
delete_site_option('finteza_register');

// Delete Transients
delete_transient('vpt_flush');
delete_site_transient('vpt_flush');

