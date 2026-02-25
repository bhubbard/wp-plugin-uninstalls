<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allow_kses_div');
delete_site_option('allow_kses_div');
delete_option('allow_kses_embed');
delete_site_option('allow_kses_embed');
delete_option('allow_kses_iframe');
delete_site_option('allow_kses_iframe');
delete_option('allow_kses_img');
delete_site_option('allow_kses_img');
delete_option('allow_kses_map');
delete_site_option('allow_kses_map');
delete_option('allow_kses_object');
delete_site_option('allow_kses_object');
delete_option('allow_kses_param');
delete_site_option('allow_kses_param');
delete_option('allow_kses_pre');
delete_site_option('allow_kses_pre');

