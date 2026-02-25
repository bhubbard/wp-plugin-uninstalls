-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('has_icons_migrated', 'highlight-and-share', 'highlight-and-share-block-editor-options', 'highlight-and-share-email-settings', 'highlight-and-share-image-options', 'highlight-and-share-theme-options', 'highlight-and-share-social-networks', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('has_hidden_color_sync_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('has_hidden_color_sync_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('has_hidden_color_sync_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('has_hidden_color_sync_notice');

