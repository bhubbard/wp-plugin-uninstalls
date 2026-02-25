-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'woocommerce_tax_display_shop', 'wcpt_name_change_notice_dismissed', 'wcpt_settings', 'woocommerce_price_display_suffix', 'woocommerce_prices_include_tax', 'woocommerce_price_num_decimals', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_currency_pos', 'wcpt_preview_template', 'wcpt_preview_template_max_width', 'woocommerce_enable_review_rating', 'wcpt_theme_customizer', 'wcpt_custom_fields');
DELETE FROM wp_options WHERE option_name LIKE 'wcpt_settings_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcpt_variations_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcpt_data', '_global_unique_id', 'wcpt_preset_required', 'wcpt_preset_applied__message_required', 'wcpt_preset_applied__slug', 'wcpt_preview_template_shortcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcpt_data', '_global_unique_id', 'wcpt_preset_required', 'wcpt_preset_applied__message_required', 'wcpt_preset_applied__slug', 'wcpt_preview_template_shortcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcpt_data', '_global_unique_id', 'wcpt_preset_required', 'wcpt_preset_applied__message_required', 'wcpt_preset_applied__slug', 'wcpt_preview_template_shortcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcpt_data', '_global_unique_id', 'wcpt_preset_required', 'wcpt_preset_applied__message_required', 'wcpt_preset_applied__slug', 'wcpt_preview_template_shortcode');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcpt_data_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcpt_data_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcpt_data_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcpt_data_%';

