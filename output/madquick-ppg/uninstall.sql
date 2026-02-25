-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('madquick_ppg_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_madquick_ppg_page', '_madquick_ppg_page_type', '_madquick_ppg_created_date', '_madquick_ppg_form_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_madquick_ppg_page', '_madquick_ppg_page_type', '_madquick_ppg_created_date', '_madquick_ppg_form_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_madquick_ppg_page', '_madquick_ppg_page_type', '_madquick_ppg_created_date', '_madquick_ppg_form_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_madquick_ppg_page', '_madquick_ppg_page_type', '_madquick_ppg_created_date', '_madquick_ppg_form_data');

