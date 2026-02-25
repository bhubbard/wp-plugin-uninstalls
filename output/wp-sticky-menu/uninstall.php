<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsm_wrap_width');
delete_site_option('wpsm_wrap_width');
delete_option('wpsm_background');
delete_site_option('wpsm_background');
delete_option('wpsm_background_hover');
delete_site_option('wpsm_background_hover');
delete_option('wpsm_font_color');
delete_site_option('wpsm_font_color');
delete_option('wpsm_font_color_hover');
delete_site_option('wpsm_font_color_hover');
delete_option('wpsm_logo');
delete_site_option('wpsm_logo');
delete_option('wpsm_social_btns');
delete_site_option('wpsm_social_btns');
delete_option('wpsm_facebook');
delete_site_option('wpsm_facebook');
delete_option('wpsm_twitter');
delete_site_option('wpsm_twitter');

