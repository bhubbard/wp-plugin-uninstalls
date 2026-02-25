-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r3df_dashboard_language_switcher');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('r3df_dashboard_language');
DELETE FROM wp_usermeta WHERE meta_key IN ('r3df_dashboard_language');
DELETE FROM wp_termmeta WHERE meta_key IN ('r3df_dashboard_language');
DELETE FROM wp_commentmeta WHERE meta_key IN ('r3df_dashboard_language');

