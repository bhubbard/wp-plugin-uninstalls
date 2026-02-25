-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wltinv_isaf_next', 'wltinv_pvm_next', 'wltinv_seller_email', 'wltinv_token_ttl_min', 'wltinv_secure_download', 'wltinv_show_vat_breakdown_migrated', 'wltinv_show_vat_breakdown', 'wltinv_activated_at', 'wltinv_isaf_start', 'wltinv_pvm_start');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wltinv_supply_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wltinv_supply_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wltinv_supply_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wltinv_supply_date');

