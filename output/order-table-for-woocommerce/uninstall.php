<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('otfw_batch_attribute_to_use');
delete_site_option('otfw_batch_attribute_to_use');
delete_option('otfw_unit_attribute_to_use');
delete_site_option('otfw_unit_attribute_to_use');
delete_option('otfw_is_premium');
delete_site_option('otfw_is_premium');
delete_option('otfw_show_attri_in_title');
delete_site_option('otfw_show_attri_in_title');
delete_option('otfw_header_config');
delete_site_option('otfw_header_config');
delete_option('otfw_show_header');
delete_site_option('otfw_show_header');
delete_option('otfw_table_config');
delete_site_option('otfw_table_config');
delete_option('otfw_override_shop');
delete_site_option('otfw_override_shop');
delete_option('otfw_override_shop_show_cat');
delete_site_option('otfw_override_shop_show_cat');
delete_option('Order_Table_Activated_Plugin');
delete_site_option('Order_Table_Activated_Plugin');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('otfw_sale_badge');
delete_site_option('otfw_sale_badge');
delete_option('otfw_use_plugin_increment_css');
delete_site_option('otfw_use_plugin_increment_css');
delete_option('otfw_override_all');
delete_site_option('otfw_override_all');
delete_option('otfw_confirm_input');
delete_site_option('otfw_confirm_input');
delete_option('otfw_table_style');
delete_site_option('otfw_table_style');
delete_option('otfw_table_header_sticky');
delete_site_option('otfw_table_header_sticky');
delete_option('otfw_show_stocklevel');
delete_site_option('otfw_show_stocklevel');
delete_option('otfw_show_images');
delete_site_option('otfw_show_images');
delete_option('otfw_link_title');
delete_site_option('otfw_link_title');
delete_option('otfw_show_cat_desc');
delete_site_option('otfw_show_cat_desc');
delete_option('otfw_cats_expand');
delete_site_option('otfw_cats_expand');
delete_option('otfw_package_string');
delete_site_option('otfw_package_string');
delete_option('otfw_checkout_string');
delete_site_option('otfw_checkout_string');
delete_option('otfw_set_the_width_manual');
delete_site_option('otfw_set_the_width_manual');

