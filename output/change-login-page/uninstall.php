<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clp_background_url');
delete_site_option('clp_background_url');
delete_option('clp_logo_url');
delete_site_option('clp_logo_url');
delete_option('clp_logo_height');
delete_site_option('clp_logo_height');
delete_option('clp_logo_width');
delete_site_option('clp_logo_width');
delete_option('clp_primary_color');
delete_site_option('clp_primary_color');
delete_option('clp_primary_text_color');
delete_site_option('clp_primary_text_color');
delete_option('clp_text_color');
delete_site_option('clp_text_color');

