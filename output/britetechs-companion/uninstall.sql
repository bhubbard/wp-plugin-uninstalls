-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recently_activated', 'jewelrystore_option', 'spawp_option', 'home_and_blog_activate', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

