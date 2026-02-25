-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ewz_data_version', 'cron', 'ewz_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ewz_itemsperpage', 'gutenberg_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('ewz_itemsperpage', 'gutenberg_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('ewz_itemsperpage', 'gutenberg_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ewz_itemsperpage', 'gutenberg_notice_dismissed');

