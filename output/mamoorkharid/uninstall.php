<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mb_CultureId_code');
delete_site_option('mb_CultureId_code');
delete_option('mb_LocationCultureId_code');
delete_site_option('mb_LocationCultureId_code');
delete_option('mb_lid_code');
delete_site_option('mb_lid_code');
delete_option('mb_moaref');
delete_site_option('mb_moaref');
delete_option('mb_vije');
delete_site_option('mb_vije');
delete_option('mb_top-text');
delete_site_option('mb_top-text');
delete_option('mb_font-top-text');
delete_site_option('mb_font-top-text');
delete_option('mb_color-top-text');
delete_site_option('mb_color-top-text');
delete_option('mb_bot-text');
delete_site_option('mb_bot-text');
delete_option('mb_font-bot-text');
delete_site_option('mb_font-bot-text');
delete_option('mb_help_link');
delete_site_option('mb_help_link');
delete_option('mb_help_link_color');
delete_site_option('mb_help_link_color');
delete_option('mb_load_bootstrap');
delete_site_option('mb_load_bootstrap');
delete_option('mb_other_site');
delete_site_option('mb_other_site');
delete_option('mb_font-tab-text');
delete_site_option('mb_font-tab-text');

