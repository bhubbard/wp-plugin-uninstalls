<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wptube_width');
delete_site_option('wptube_width');
delete_option('wptube_height');
delete_site_option('wptube_height');
delete_option('wptube_method');
delete_site_option('wptube_method');
delete_option('wptube_player_version');
delete_site_option('wptube_player_version');
delete_option('wptube_showinfo');
delete_site_option('wptube_showinfo');
delete_option('wptube_autoplay');
delete_site_option('wptube_autoplay');
delete_option('wptube_theme');
delete_site_option('wptube_theme');
delete_option('wptube_fs');
delete_site_option('wptube_fs');
delete_option('wptube_rel');
delete_site_option('wptube_rel');
delete_option('wptube_iv_load_policy');
delete_site_option('wptube_iv_load_policy');
delete_option('wptube_cc_load_policy');
delete_site_option('wptube_cc_load_policy');
delete_option('wptube_hd');
delete_site_option('wptube_hd');
delete_option('wptube_showsearch');
delete_site_option('wptube_showsearch');
delete_option('wptube_modestbranding');
delete_site_option('wptube_modestbranding');

