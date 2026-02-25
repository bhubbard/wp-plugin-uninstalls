-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsub_recaptcha_keys', 'wpsub_emails_setting', 'wpsub_payments_setting', 'wpsub_woocommerce_product_id', 'wpsub_enable_woocommerce', 'wpsub_default_post_status', 'wpsub_paid_success_message', 'wpsub_free_success_message', 'wpsub_content_min_words', 'wpsub_content_max_words', 'wpsub_error_message', 'wpsub_redirect_url', 'wpsub_richtext_editor', 'wpsub_unique_title', 'wpsub_category_selection_mode', 'wpsub_show_tags', 'wpsub_show_featured_image');

