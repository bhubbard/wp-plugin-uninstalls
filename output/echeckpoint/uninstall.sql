-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eCheckpoint_pre_settings', 'eCheckpoint_enable_50_state_fee', 'eCheckpoint_fee_percentage', 'eCheckpoint_minimum_fee_per_item', 'eCheckpoint_maximum_fee_per_item', 'eCheckpoint_calculate_fee_on_multiples', 'eCheckpoint_compliance_fee_message', 'eCheckpoint_excluded_states', 'eCheckpoint_API_Key_Value', 'eCheckpoint_Message_Checkbox_Value', 'eCheckpoint_OnHold_Checkbox_Value');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipping_company', 'customer_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipping_company', 'customer_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipping_company', 'customer_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipping_company', 'customer_type');

