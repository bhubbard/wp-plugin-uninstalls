-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_plugin_theme_update_emails');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsk_banner_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsk_banner_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsk_banner_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsk_banner_dismissed');

