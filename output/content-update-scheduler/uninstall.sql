-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cus_scheduled_homepage_changes', 'tsu_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cus_sc_publish_original', 'cus_sc_publish_pubdate');
DELETE FROM wp_usermeta WHERE meta_key IN ('cus_sc_publish_original', 'cus_sc_publish_pubdate');
DELETE FROM wp_termmeta WHERE meta_key IN ('cus_sc_publish_original', 'cus_sc_publish_pubdate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cus_sc_publish_original', 'cus_sc_publish_pubdate');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_pubdate';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_pubdate';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_pubdate';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_pubdate';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_original';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_original';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_original';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_original';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_keep_dates';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_keep_dates';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_keep_dates';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_keep_dates';

