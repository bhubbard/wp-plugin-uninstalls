<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tposguten_org');
delete_site_option('tposguten_org');
delete_option('tposguten_theme');
delete_site_option('tposguten_theme');
delete_option('tposguten_lang');
delete_site_option('tposguten_lang');
delete_option('tposguten_main_color');
delete_site_option('tposguten_main_color');
delete_option('tposguten_ticket_agency');
delete_site_option('tposguten_ticket_agency');
delete_option('org');
delete_site_option('org');
delete_option('theme');
delete_site_option('theme');
delete_option('lang');
delete_site_option('lang');
delete_option('mainColor');
delete_site_option('mainColor');

