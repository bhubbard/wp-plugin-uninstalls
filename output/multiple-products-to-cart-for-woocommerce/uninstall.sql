-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wmc_sorted_columns', 'mpcasc_counter', 'wmc_redirect', 'wmc_button_text', 'wmc_missed_variation_text', 'wmc_empty_form_text', 'woocommerce_price_num_decimals', 'wmca_default_quantity', 'mpc_button_text_color', 'wmc_button_color', 'mpc_head_text_color', 'wmc_thead_back_color', 'mpc_protitle_color', 'mpc_protitle_font_size', 'mpc_protitle_bold_font', 'mpc_protitle_underline', 'mpc_image_size', 'wmca_inline_dropdown', 'mpca_rate_us', 'mpca_notify_pro', 'mpc_sddt_title_asc', 'mpc_sddt_title_desc', 'mpc_sddt_default', 'mpc_sddt_price_asc', 'mpc_sddt_price_desc');
DELETE FROM wp_options WHERE option_name LIKE 'wmc_ct_%';
DELETE FROM wp_options WHERE option_name LIKE 'mpcasc_code%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('table_id', 'shortcode', '_subscription_sign_up_fee', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('table_id', 'shortcode', '_subscription_sign_up_fee', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('table_id', 'shortcode', '_subscription_sign_up_fee', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('table_id', 'shortcode', '_subscription_sign_up_fee', '_thumbnail_id');

