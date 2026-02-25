<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clpt_logo');
delete_site_option('clpt_logo');
delete_option('clpt_bg_image');
delete_site_option('clpt_bg_image');
delete_option('clpt_template');
delete_site_option('clpt_template');
delete_option('clpt_potd');
delete_site_option('clpt_potd');

// Delete Transients
delete_transient('clp_potd_url');
delete_site_transient('clp_potd_url');

