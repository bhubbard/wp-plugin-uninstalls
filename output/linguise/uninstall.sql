-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linguise_install_time', 'linguise_options', 'linguise_version', 'linguise_feedback_notify_dismissed', 'linguise_multisite_subdomain');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_linguise_menu_item', 'linguise_language', 'linguise_register_language');
DELETE FROM wp_usermeta WHERE meta_key IN ('_linguise_menu_item', 'linguise_language', 'linguise_register_language');
DELETE FROM wp_termmeta WHERE meta_key IN ('_linguise_menu_item', 'linguise_language', 'linguise_register_language');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_linguise_menu_item', 'linguise_language', 'linguise_register_language');

