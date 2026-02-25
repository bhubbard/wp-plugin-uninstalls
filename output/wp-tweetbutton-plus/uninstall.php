<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptb_count');
delete_site_option('wptb_count');
delete_option('wptb_lang');
delete_site_option('wptb_lang');
delete_option('wptb_via');
delete_site_option('wptb_via');
delete_option('wptb_related');
delete_site_option('wptb_related');
delete_option('wptb_related_desc');
delete_site_option('wptb_related_desc');
delete_option('wptb_text');
delete_site_option('wptb_text');
delete_option('wptb_text_value');
delete_site_option('wptb_text_value');
delete_option('wptb_display_entry');
delete_site_option('wptb_display_entry');
delete_option('wptb_display_page');
delete_site_option('wptb_display_page');
delete_option('wptb_display_home');
delete_site_option('wptb_display_home');
delete_option('wptb_position');
delete_site_option('wptb_position');

