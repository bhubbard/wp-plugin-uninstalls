<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aura_thumb_site_url');
delete_site_option('aura_thumb_site_url');
delete_option('aura_thumb_site_backcolor');
delete_site_option('aura_thumb_site_backcolor');
delete_option('aura_thumb_site_effect');
delete_site_option('aura_thumb_site_effect');
delete_option('aura_thumb_site_speed');
delete_site_option('aura_thumb_site_speed');
delete_option('aura_thumb_site_opacity');
delete_site_option('aura_thumb_site_opacity');
delete_option('aura_thumb_site_img_width');
delete_site_option('aura_thumb_site_img_width');
delete_option('aura_thumb_site_img_border');
delete_site_option('aura_thumb_site_img_border');
delete_option('aura_thumb_site_border_color');
delete_site_option('aura_thumb_site_border_color');
delete_option('aura_thumb_site_img_space');
delete_site_option('aura_thumb_site_img_space');
delete_option('aura_thumb_site_title_size');
delete_site_option('aura_thumb_site_title_size');

