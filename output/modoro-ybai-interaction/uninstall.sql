-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ybai_access_key', 'ybai_secret_key', 'ybai_param_key', 'ybai_head_script', 'channel_id', 'ybai_access_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ybai_sent', '_ybai_code', '_ybai_affiliate_code', '_ybai_error_message', '_ybai_enabled', 'ybai_affiliate_code', '_original_order_data', '_ybai_affiliate');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ybai_sent', '_ybai_code', '_ybai_affiliate_code', '_ybai_error_message', '_ybai_enabled', 'ybai_affiliate_code', '_original_order_data', '_ybai_affiliate');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ybai_sent', '_ybai_code', '_ybai_affiliate_code', '_ybai_error_message', '_ybai_enabled', 'ybai_affiliate_code', '_original_order_data', '_ybai_affiliate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ybai_sent', '_ybai_code', '_ybai_affiliate_code', '_ybai_error_message', '_ybai_enabled', 'ybai_affiliate_code', '_original_order_data', '_ybai_affiliate');

