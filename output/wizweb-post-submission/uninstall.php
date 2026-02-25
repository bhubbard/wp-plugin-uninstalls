<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsub_recaptcha_keys');
delete_site_option('wpsub_recaptcha_keys');
delete_option('wpsub_emails_setting');
delete_site_option('wpsub_emails_setting');
delete_option('wpsub_payments_setting');
delete_site_option('wpsub_payments_setting');
delete_option('wpsub_woocommerce_product_id');
delete_site_option('wpsub_woocommerce_product_id');
delete_option('wpsub_enable_woocommerce');
delete_site_option('wpsub_enable_woocommerce');
delete_option('wpsub_default_post_status');
delete_site_option('wpsub_default_post_status');
delete_option('wpsub_paid_success_message');
delete_site_option('wpsub_paid_success_message');
delete_option('wpsub_free_success_message');
delete_site_option('wpsub_free_success_message');
delete_option('wpsub_content_min_words');
delete_site_option('wpsub_content_min_words');
delete_option('wpsub_content_max_words');
delete_site_option('wpsub_content_max_words');
delete_option('wpsub_error_message');
delete_site_option('wpsub_error_message');
delete_option('wpsub_redirect_url');
delete_site_option('wpsub_redirect_url');
delete_option('wpsub_richtext_editor');
delete_site_option('wpsub_richtext_editor');
delete_option('wpsub_unique_title');
delete_site_option('wpsub_unique_title');
delete_option('wpsub_category_selection_mode');
delete_site_option('wpsub_category_selection_mode');
delete_option('wpsub_show_tags');
delete_site_option('wpsub_show_tags');
delete_option('wpsub_show_featured_image');
delete_site_option('wpsub_show_featured_image');

