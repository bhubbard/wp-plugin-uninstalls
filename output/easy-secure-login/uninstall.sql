-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eslgp_settings', 'eslgp_show_setup_notice', 'eslgp_wizard_progress', 'eslgp_plugin_last_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('google_profile_picture');
DELETE FROM wp_usermeta WHERE meta_key IN ('google_profile_picture');
DELETE FROM wp_termmeta WHERE meta_key IN ('google_profile_picture');
DELETE FROM wp_commentmeta WHERE meta_key IN ('google_profile_picture');

