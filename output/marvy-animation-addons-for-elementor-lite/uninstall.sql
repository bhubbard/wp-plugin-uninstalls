-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('marvy_option_settings', 'elementor_active_kit', 'MarvyPro_is_install', 'iq-notice', 'marvy_animation_pro');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings', '_elementor_edit_mode');

