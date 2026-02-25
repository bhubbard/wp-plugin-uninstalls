-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_num_decimals', 'usetada_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('usetada_topup_status', 'usetada_topup_items', 'usetada_topup_last_process', 'usetada_topup_last_api_response');
DELETE FROM wp_usermeta WHERE meta_key IN ('usetada_topup_status', 'usetada_topup_items', 'usetada_topup_last_process', 'usetada_topup_last_api_response');
DELETE FROM wp_termmeta WHERE meta_key IN ('usetada_topup_status', 'usetada_topup_items', 'usetada_topup_last_process', 'usetada_topup_last_api_response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('usetada_topup_status', 'usetada_topup_items', 'usetada_topup_last_process', 'usetada_topup_last_api_response');

