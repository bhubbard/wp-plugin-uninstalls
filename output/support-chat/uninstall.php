<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('njt_wp_saio');
delete_site_option('njt_wp_saio');
delete_option('njt_wp_saio_default_apps');
delete_site_option('njt_wp_saio_default_apps');
delete_option('wpsaio_enable_plugin');
delete_site_option('wpsaio_enable_plugin');
delete_option('wpsaio_style');
delete_site_option('wpsaio_style');
delete_option('wpsaio_tooltip');
delete_site_option('wpsaio_tooltip');
delete_option('wpsaio_widget_position');
delete_site_option('wpsaio_widget_position');
delete_option('wpsaio_bottom_distance');
delete_site_option('wpsaio_bottom_distance');
delete_option('wpsaio_button_icon');
delete_site_option('wpsaio_button_icon');
delete_option('wpsaio_button_image');
delete_site_option('wpsaio_button_image');
delete_option('wpsaio_button_color');
delete_site_option('wpsaio_button_color');
delete_option('wpsaio_show_on_desktop');
delete_site_option('wpsaio_show_on_desktop');
delete_option('wpsaio_show_on_mobile');
delete_site_option('wpsaio_show_on_mobile');
delete_option('wpsaio_display_condition');
delete_site_option('wpsaio_display_condition');
delete_option('wpsaio_includes_pages');
delete_site_option('wpsaio_includes_pages');
delete_option('wpsaio_excludes_pages');
delete_site_option('wpsaio_excludes_pages');
delete_option('wpsaio_review_tracked');
delete_site_option('wpsaio_review_tracked');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

