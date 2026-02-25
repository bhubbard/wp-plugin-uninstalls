<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enh_links_version');
delete_site_option('enh_links_version');
delete_option('enh_links_show_symbol');
delete_site_option('enh_links_show_symbol');
delete_option('enh_links_hide_symbol');
delete_site_option('enh_links_hide_symbol');
delete_option('enh_links_is_symbol_before');
delete_site_option('enh_links_is_symbol_before');
delete_option('enh_links_show_link_description');
delete_site_option('enh_links_show_link_description');
delete_option('enh_links_effect');
delete_site_option('enh_links_effect');

