-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cart_redirect_after_add', 'woocommerce_enable_ajax_add_to_cart', 'cartpops_settings_upsells_count_per_order_type', 'cartpops_settings_email_template_type', 'cartpops_settings_email_from_name', 'cartpops_settings_email_from_address', 'new_admin_email', 'woocommerce_tax_display_cart', 'cartpops_settings_upsell_display_table_pagination', 'cartpops_settings_free_upsell_per_page_column_count', 'cartpops_settings_carousel_navigation', 'cartpops_settings_carousel_auto_play', 'cartpops_settings_carousel_pagination', 'cartpops_settings_carousel_navigation_prevoius_text', 'cartpops_settings_carousel_navigation_next_text', 'cartpops_settings_carousel_upsell_per_page', 'cartpops_settings_carousel_item_margin', 'cartpops_settings_carousel_item_per_slide', 'cartpops_settings_carousel_slide_speed', 'cartpops_settings_product_upsell_heading_label', 'cartpops_settings_product_upsell_add_to_cart_button_label', 'cartpops_settings_product_upsell_dropdown_default_option_label', 'cartpops_settings_dropdown_add_to_cart_behaviour', 'cartpops_settings_upsell_display_product_linkable', 'woocommerce_tax_total_display', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'cartpops_potential_issues', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cartpops_rule_usage_count', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('cartpops_rule_usage_count', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('cartpops_rule_usage_count', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cartpops_rule_usage_count', '_regular_price', '_sale_price');

