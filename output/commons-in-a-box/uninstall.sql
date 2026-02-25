-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_cbox_current_package', '_cbox_revision_date', '_cbox_theme_activated', 'recently_activated', 'cboxol_ver', 'active_sitewide_plugins', 'update_plugins', 'cbox_deactivate_cascade', '_bp_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show_cbox_welcome_panel');
DELETE FROM wp_usermeta WHERE meta_key IN ('show_cbox_welcome_panel');
DELETE FROM wp_termmeta WHERE meta_key IN ('show_cbox_welcome_panel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show_cbox_welcome_panel');

