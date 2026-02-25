<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aws_api_key');
delete_site_option('aws_api_key');
delete_option('aws_secret_key');
delete_site_option('aws_secret_key');
delete_option('aws_associate_tag');
delete_site_option('aws_associate_tag');
delete_option('aws_search_asin_flag');
delete_site_option('aws_search_asin_flag');
delete_option('aws_search_parent_asin_flag');
delete_site_option('aws_search_parent_asin_flag');
delete_option('aws_search_image_flag');
delete_site_option('aws_search_image_flag');
delete_option('aws_search_title_flag');
delete_site_option('aws_search_title_flag');
delete_option('aws_search_manufacturer_flag');
delete_site_option('aws_search_manufacturer_flag');
delete_option('aws_search_product_price_flag');
delete_site_option('aws_search_product_price_flag');
delete_option('aws_search_category_flag');
delete_site_option('aws_search_category_flag');
delete_option('aws_search_price_flag');
delete_site_option('aws_search_price_flag');
delete_option('aws_search_response_group');
delete_site_option('aws_search_response_group');
delete_option('aws_search_condition_flag');
delete_site_option('aws_search_condition_flag');
delete_option('aws_search_text_class');
delete_site_option('aws_search_text_class');
delete_option('aws_search_category_class');
delete_site_option('aws_search_category_class');
delete_option('aws_search_minmax_class');
delete_site_option('aws_search_minmax_class');
delete_option('aws_search_condition_class');
delete_site_option('aws_search_condition_class');
delete_option('aws_search_button_class');
delete_site_option('aws_search_button_class');

