-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poly_pin_enabled_types', 'poly_pin_quick_pinning', 'poly_pin_enable_edit_plugins_themes', 'poly_pin_terms', 'poly_pin_quick_access_menu', 'poly_pin_plugins', 'poly_pin_themes');
DELETE FROM wp_options WHERE option_name LIKE 'poly_pin_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('term_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('term_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('term_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('term_note');

