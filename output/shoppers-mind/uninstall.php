<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ceneje_shop_id');
delete_site_option('ceneje_shop_id');
delete_option('ceneje_badge_enabled');
delete_site_option('ceneje_badge_enabled');
delete_option('ceneje_popup_enabled');
delete_site_option('ceneje_popup_enabled');
delete_option('ceneje_floater_enabled');
delete_site_option('ceneje_floater_enabled');
delete_option('ceneje_xml_url');
delete_site_option('ceneje_xml_url');
delete_option('ceneje_exclude_out_of_stock');
delete_site_option('ceneje_exclude_out_of_stock');
delete_option('ceneje_gender_attribute');
delete_site_option('ceneje_gender_attribute');
delete_option('ceneje_color_attribute');
delete_site_option('ceneje_color_attribute');
delete_option('ceneje_size_attribute');
delete_site_option('ceneje_size_attribute');
delete_option('ceneje_agegroup_attribute');
delete_site_option('ceneje_agegroup_attribute');
delete_option('ceneje_brand_attribute');
delete_site_option('ceneje_brand_attribute');
delete_option('ceneje_delivery_cost');
delete_site_option('ceneje_delivery_cost');
delete_option('ceneje_free_delivery_above');
delete_site_option('ceneje_free_delivery_above');
delete_option('ceneje_delivery_time_min');
delete_site_option('ceneje_delivery_time_min');
delete_option('ceneje_delivery_time_max');
delete_site_option('ceneje_delivery_time_max');
delete_option('ceneje_popup_page');
delete_site_option('ceneje_popup_page');

