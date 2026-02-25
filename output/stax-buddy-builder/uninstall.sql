-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpb_settings', 'bpb_imported_templates', 'bpb_starter_kit_imported', 'bp_nouveau_appearance', '_bpb_installed_time', 'bpb_profile_listings', 'bp-pages', 'bpb_listings', '_bp_theme_package_id');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_controls_usage');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_controls_usage');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_controls_usage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_controls_usage');

