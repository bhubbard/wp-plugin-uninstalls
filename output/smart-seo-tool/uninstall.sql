-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_sst_db_ver', 'sseot_other_cnf', 'sseot_guide', 'wb_sst_ver', 'wb_sst_daily_ping_time', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_rewrite';
DELETE FROM wp_options WHERE option_name LIKE '%ver';
DELETE FROM wp_options WHERE option_name LIKE 'wb_sst_cnf_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seo_top_keywords', 'wb_sst_seo');
DELETE FROM wp_usermeta WHERE meta_key IN ('seo_top_keywords', 'wb_sst_seo');
DELETE FROM wp_termmeta WHERE meta_key IN ('seo_top_keywords', 'wb_sst_seo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seo_top_keywords', 'wb_sst_seo');

