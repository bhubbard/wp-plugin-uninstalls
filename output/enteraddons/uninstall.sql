-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enteraddons_options', 'elementor_load_fa4_shim', 'enteraddons_plugin_lic_Key');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_ea_exclude_page', '_ea_hf_show_onfof', '_ea_hf_status', '_ea_hf_type', '_ea_use_on_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_ea_exclude_page', '_ea_hf_show_onfof', '_ea_hf_status', '_ea_hf_type', '_ea_use_on_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_ea_exclude_page', '_ea_hf_show_onfof', '_ea_hf_status', '_ea_hf_type', '_ea_use_on_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_ea_exclude_page', '_ea_hf_show_onfof', '_ea_hf_status', '_ea_hf_type', '_ea_use_on_header');

