-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bmw_eligibility_settings', 'bmw_general_settings', 'bmw_mapping_settings', 'bmw_payout_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('account_holder_name', 'account_number', 'bank_name', 'ifsc_code', 'branch', 'first_name', 'last_name', 'user_address1', 'user_city', 'user_state', 'user_postalcode', 'user_dob', 'bmw_placement', 'bmw_sponsor', 'bmw_page_title', 'is_mlm_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('account_holder_name', 'account_number', 'bank_name', 'ifsc_code', 'branch', 'first_name', 'last_name', 'user_address1', 'user_city', 'user_state', 'user_postalcode', 'user_dob', 'bmw_placement', 'bmw_sponsor', 'bmw_page_title', 'is_mlm_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('account_holder_name', 'account_number', 'bank_name', 'ifsc_code', 'branch', 'first_name', 'last_name', 'user_address1', 'user_city', 'user_state', 'user_postalcode', 'user_dob', 'bmw_placement', 'bmw_sponsor', 'bmw_page_title', 'is_mlm_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('account_holder_name', 'account_number', 'bank_name', 'ifsc_code', 'branch', 'first_name', 'last_name', 'user_address1', 'user_city', 'user_state', 'user_postalcode', 'user_dob', 'bmw_placement', 'bmw_sponsor', 'bmw_page_title', 'is_mlm_page');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_points_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_points_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_points_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_points_%';

