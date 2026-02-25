<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jcwp_quote_option_field_phone_number');
delete_site_option('jcwp_quote_option_field_phone_number');
delete_option('jcwp_quote_option_field_button_text');
delete_site_option('jcwp_quote_option_field_button_text');
delete_option('jcwp_quote_option_field_message_text');
delete_site_option('jcwp_quote_option_field_message_text');
delete_option('jcwp_quote_option_field_show_on_product_page');
delete_site_option('jcwp_quote_option_field_show_on_product_page');
delete_option('jcwp_quote_option_field_show_on_shop_page');
delete_site_option('jcwp_quote_option_field_show_on_shop_page');
delete_option('jcwp_quote_option_field_show_on_categories');
delete_site_option('jcwp_quote_option_field_show_on_categories');

