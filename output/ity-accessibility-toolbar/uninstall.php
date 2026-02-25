<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ityacto_font_size');
delete_site_option('ityacto_font_size');
delete_option('ityacto_contrast_enabled');
delete_site_option('ityacto_contrast_enabled');
delete_option('ityacto_listen_enabled');
delete_site_option('ityacto_listen_enabled');
delete_option('ityacto_bg_color');
delete_site_option('ityacto_bg_color');
delete_option('ityacto_text_color');
delete_site_option('ityacto_text_color');
delete_option('ityacto_default_font_size');
delete_site_option('ityacto_default_font_size');

