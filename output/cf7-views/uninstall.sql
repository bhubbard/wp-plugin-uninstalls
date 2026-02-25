-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_views_entries_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_reviews_installed_on';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('view_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('view_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('view_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('view_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reviews_dismissed_triggers';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reviews_dismissed_triggers';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reviews_dismissed_triggers';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reviews_dismissed_triggers';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reviews_last_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reviews_last_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reviews_last_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reviews_last_dismissed';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reviews_already_did';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reviews_already_did';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reviews_already_did';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reviews_already_did';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_cf7_attachment_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_cf7_attachment_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_cf7_attachment_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cf7_attachment_%';

