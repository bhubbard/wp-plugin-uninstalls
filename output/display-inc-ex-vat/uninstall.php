<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiev_activated_Plugin');
delete_site_option('aiev_activated_Plugin');
delete_option('diev_view_type');
delete_site_option('diev_view_type');
delete_option('diev_excluded_tax_label');
delete_site_option('diev_excluded_tax_label');
delete_option('diev_included_tax_label');
delete_site_option('diev_included_tax_label');
delete_option('diev_font_size');
delete_site_option('diev_font_size');
delete_option('diev_font_weight');
delete_site_option('diev_font_weight');
delete_option('diev_font_color');
delete_site_option('diev_font_color');
delete_option('diev_shop_page');
delete_site_option('diev_shop_page');
delete_option('diev_archive_page');
delete_site_option('diev_archive_page');
delete_option('diev_single_page');
delete_site_option('diev_single_page');

