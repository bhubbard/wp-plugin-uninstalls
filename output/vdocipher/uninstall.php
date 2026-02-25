<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vdo_client_key');
delete_site_option('vdo_client_key');
delete_option('vdo_default_width');
delete_site_option('vdo_default_width');
delete_option('vdo_default_height');
delete_site_option('vdo_default_height');
delete_option('vdo_player_speed');
delete_site_option('vdo_player_speed');
delete_option('vdo_embed_version');
delete_site_option('vdo_embed_version');
delete_option('vdo_player_theme');
delete_site_option('vdo_player_theme');
delete_option('vdo_annotate_code');
delete_site_option('vdo_annotate_code');
delete_option('vdo_send_user_id_in_api');
delete_site_option('vdo_send_user_id_in_api');
delete_option('vdo_show_plugin_in_sidebar');
delete_site_option('vdo_show_plugin_in_sidebar');
delete_option('vdo_plugin_version');
delete_site_option('vdo_plugin_version');

