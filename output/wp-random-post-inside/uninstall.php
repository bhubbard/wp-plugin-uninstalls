<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprpi_version');
delete_site_option('wprpi_version');
delete_option('wprpi_notice_dismiss');
delete_site_option('wprpi_notice_dismiss');
delete_option('wprpi_link_color');
delete_site_option('wprpi_link_color');
delete_option('wprpi_hover_color');
delete_site_option('wprpi_hover_color');
delete_option('wprpi_bg_color');
delete_site_option('wprpi_bg_color');
delete_option('wprpi_title_color');
delete_site_option('wprpi_title_color');
delete_option('wprpi_font_size');
delete_site_option('wprpi_font_size');
delete_option('wprpi_related_by_cat');
delete_site_option('wprpi_related_by_cat');
delete_option('wprpi_related_by_tag');
delete_site_option('wprpi_related_by_tag');
delete_option('wprpi_supported_cpt');
delete_site_option('wprpi_supported_cpt');
delete_option('wprpi_show_icon');
delete_site_option('wprpi_show_icon');
delete_option('wprpi_icon');
delete_site_option('wprpi_icon');

