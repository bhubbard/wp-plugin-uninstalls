-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sti-settings', 'sti_dashboard_widget_options', 'sti_db_version', 'smart-touch-form-builder-screen-options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sti-form-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('sti-form-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('sti-form-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sti-form-settings');

