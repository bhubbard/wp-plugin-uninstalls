-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wiremo_widget_location', 'wiremo-siteId', 'wiremo_custom_text_reviews', 'wiremo_automated_authentification', 'wiremo-api-key', 'wiremo_disable_woo', 'wiremo_widget_display', 'wiremo_generate_schema', 'wiremo_custom_tab_name', 'wiremo_hide_mini_widget_home', 'wiremo_hide_mini_widget_cat', 'wiremo_hide_mini_widget_prod', 'wiremo_hide_mini_widget', 'wiremo_show_custom_text_related', 'wiremo_related_custom_text', 'wiremo_related_products_sort', 'wiremo_automated_review_request', 'wiremo_email_template', 'woocommerce_shop_page_id', 'wiremo_email_template_name', 'wiremo_manual_emails_day', 'wiremo_manual_email_template', 'wiremo_manual_email_template_name', 'wiremo_total_campaigns', 'wiremo-display-import', 'wiremo_import_reviews', 'wiremo_widget_sync_products', 'wiremo_manual_datetime_start', 'wiremo_manual_datetime_end', 'wiremo_manual_create_campaigns', 'wiremo-widget-text-font', 'woocommerce_default_catalog_orderby', 'wrpw_wpml_option', 'wiremo-register-hooks', 'wiremo-widget-hover', 'wiremo-widget-star-color', 'wiremo-widget-language', 'wiremo-widget-star-style', 'wiremo-widget-star-size');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'wiremo_campaigns_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wiremo-review-count', 'wiremo-review-total', 'wiremo-review-average', '_completed_date', 'rating', 'hwp_product_gtin');
DELETE FROM wp_usermeta WHERE meta_key IN ('wiremo-review-count', 'wiremo-review-total', 'wiremo-review-average', '_completed_date', 'rating', 'hwp_product_gtin');
DELETE FROM wp_termmeta WHERE meta_key IN ('wiremo-review-count', 'wiremo-review-total', 'wiremo-review-average', '_completed_date', 'rating', 'hwp_product_gtin');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wiremo-review-count', 'wiremo-review-total', 'wiremo-review-average', '_completed_date', 'rating', 'hwp_product_gtin');

