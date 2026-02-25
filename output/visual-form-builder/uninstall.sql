-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vfb_dashboard_widget_options', 'vfb-settings', 'vfb_db_version', 'recently_activated', 'visual-form-builder-screen-options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vfb-form-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('vfb-form-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('vfb-form-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vfb-form-settings');

