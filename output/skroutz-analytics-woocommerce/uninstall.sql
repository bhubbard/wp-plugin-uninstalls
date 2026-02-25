-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_skroutz_analytics_settings', 'widget_wc_skroutz_analytics_product_reviews_inline_widget', 'widget_wc_skroutz_analytics_product_reviews_extended_widget');

