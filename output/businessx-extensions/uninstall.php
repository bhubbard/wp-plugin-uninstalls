<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_bx-item-features');
delete_site_option('widget_bx-item-features');
delete_option('widget_bx-item-actions');
delete_site_option('widget_bx-item-actions');
delete_option('widget_bx-item-pricing');
delete_site_option('widget_bx-item-pricing');
delete_option('widget_bx-item-slider');
delete_site_option('widget_bx-item-slider');
delete_option('bxext_fp_installed');
delete_site_option('bxext_fp_installed');
delete_option('bxext_dismiss_fp_create');
delete_site_option('bxext_dismiss_fp_create');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('businessx_ext_widgets_bk');
delete_site_option('businessx_ext_widgets_bk');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');

