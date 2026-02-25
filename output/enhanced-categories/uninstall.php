<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enh_cats_version');
delete_site_option('enh_cats_version');
delete_option('enh_cats_show_symbol');
delete_site_option('enh_cats_show_symbol');
delete_option('enh_cats_hide_symbol');
delete_site_option('enh_cats_hide_symbol');
delete_option('enh_cats_no_child_symbol');
delete_site_option('enh_cats_no_child_symbol');
delete_option('enh_cats_effect');
delete_site_option('enh_cats_effect');
delete_option('enh_cats_show_count');
delete_site_option('enh_cats_show_count');
delete_option('enh_cats_show_rss');
delete_site_option('enh_cats_show_rss');
delete_option('enh_cats_hide_empty');
delete_site_option('enh_cats_hide_empty');
delete_option('enh_cats_button_before_link');
delete_site_option('enh_cats_button_before_link');

