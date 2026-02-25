-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'naeca_bw_settings', 'naeca_uw_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('edd-taxonomy-image-id', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('edd-taxonomy-image-id', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('edd-taxonomy-image-id', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('edd-taxonomy-image-id', 'thumbnail_id');

