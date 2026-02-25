-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_out_of_stock_message', 'woocommerce_out_of_stock', 'wcosm_badge_position', 'wcosm_active', 'woocommerce_stock_email_recipient', 'wcosm_email_admin', 'woocommerce_manage_stock', 'wcosm_deactive', 'woocommerce_email_footer_text', 'woocommerce_prices_include_tax');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_cached_promos';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_out_of_stock_msg', '_wcosm_use_global_note', '_wcosm_is_var', '_wcosm_var_msg');
DELETE FROM wp_usermeta WHERE meta_key IN ('_out_of_stock_msg', '_wcosm_use_global_note', '_wcosm_is_var', '_wcosm_var_msg');
DELETE FROM wp_termmeta WHERE meta_key IN ('_out_of_stock_msg', '_wcosm_use_global_note', '_wcosm_is_var', '_wcosm_var_msg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_out_of_stock_msg', '_wcosm_use_global_note', '_wcosm_is_var', '_wcosm_var_msg');

