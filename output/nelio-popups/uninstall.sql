-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nelio_popups_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nelio_popups_active_popup', '_nelio_popups_is_enabled', '_nelio_popups_target', '_nelio_popups_triggers', '_nelio_popups_conditions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nelio_popups_active_popup', '_nelio_popups_is_enabled', '_nelio_popups_target', '_nelio_popups_triggers', '_nelio_popups_conditions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nelio_popups_active_popup', '_nelio_popups_is_enabled', '_nelio_popups_target', '_nelio_popups_triggers', '_nelio_popups_conditions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nelio_popups_active_popup', '_nelio_popups_is_enabled', '_nelio_popups_target', '_nelio_popups_triggers', '_nelio_popups_conditions');

