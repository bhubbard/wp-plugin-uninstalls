<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pisol_smdsw_shipping_method_style');
delete_site_option('pisol_smdsw_shipping_method_style');
delete_option('pisol_smdsw_override_custom_theme_template');
delete_site_option('pisol_smdsw_override_custom_theme_template');
delete_option('pisol_smdsw_show_zero_for_free_shipping');
delete_site_option('pisol_smdsw_show_zero_for_free_shipping');
delete_option('pisol_smdsw_show_selected_shipping_method');
delete_site_option('pisol_smdsw_show_selected_shipping_method');
delete_option('pisol_smdsw_shipping_method_order');
delete_site_option('pisol_smdsw_shipping_method_order');
delete_option('pisol_smdsw_single_shipping_option');
delete_site_option('pisol_smdsw_single_shipping_option');
delete_option('pisol_smdsw_exclude_local_pickup_removal');
delete_site_option('pisol_smdsw_exclude_local_pickup_removal');
delete_option('pisol_smdsw_disable_auto_selection');
delete_site_option('pisol_smdsw_disable_auto_selection');
delete_option('pisol_smdsw_background_color');
delete_site_option('pisol_smdsw_background_color');
delete_option('pisol_smdsw_shipping_method_icon');
delete_site_option('pisol_smdsw_shipping_method_icon');
delete_option('pisol_smdsw_show_system_name');
delete_site_option('pisol_smdsw_show_system_name');
delete_option('pisol_smdsw_selectwoo');
delete_site_option('pisol_smdsw_selectwoo');
delete_option('pisol_spdsw_recorded_shipping_methods');
delete_site_option('pisol_spdsw_recorded_shipping_methods');
delete_option('pi_smdsw_do_activation_redirect');
delete_site_option('pi_smdsw_do_activation_redirect');

