-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('header_tracking_script_code', 'page_tracking_script_code', 'footer_tracking_script_code', 'tsm_is_processing');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('r8_tsm_script_code', 'r8_tsm_encoded_save', 'r8_tsm_script_page', 'r8_tsm_script_expiry_info', 'r8_tsm_active', 'r8_tsm_script_location', 'r8_tsm_script_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('r8_tsm_script_code', 'r8_tsm_encoded_save', 'r8_tsm_script_page', 'r8_tsm_script_expiry_info', 'r8_tsm_active', 'r8_tsm_script_location', 'r8_tsm_script_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('r8_tsm_script_code', 'r8_tsm_encoded_save', 'r8_tsm_script_page', 'r8_tsm_script_expiry_info', 'r8_tsm_active', 'r8_tsm_script_location', 'r8_tsm_script_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('r8_tsm_script_code', 'r8_tsm_encoded_save', 'r8_tsm_script_page', 'r8_tsm_script_expiry_info', 'r8_tsm_active', 'r8_tsm_script_location', 'r8_tsm_script_order');

