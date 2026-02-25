<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trit_which_taxonomy');
delete_site_option('trit_which_taxonomy');
delete_option('trit_position');
delete_site_option('trit_position');
delete_option('trit_custom_text');
delete_site_option('trit_custom_text');
delete_option('trit_color');
delete_site_option('trit_color');
delete_option('trit_background_color');
delete_site_option('trit_background_color');
delete_option('trit_font_size');
delete_site_option('trit_font_size');
delete_option('trit_uppercase');
delete_site_option('trit_uppercase');
delete_option('trit_who_can_see');
delete_site_option('trit_who_can_see');

