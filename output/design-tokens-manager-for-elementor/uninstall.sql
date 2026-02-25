-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_scheme_color', 'elementor_scheme_typography', 'edtm_pending_kit_sync', 'elementor_active_kit', 'edtm_sync_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings', 'edtm_last_active_section');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings', 'edtm_last_active_section');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings', 'edtm_last_active_section');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings', 'edtm_last_active_section');

