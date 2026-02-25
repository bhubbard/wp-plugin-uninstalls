-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_enable_inspector', 'elementor_beta_auto_update', 'elementor_allow_tracking', 'auto_update_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'elementor_rollback_versions_%';
DELETE FROM wp_options WHERE option_name LIKE 'elementor_pro_rollback_versions_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('elementor_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('elementor_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('elementor_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('elementor_preferences');

