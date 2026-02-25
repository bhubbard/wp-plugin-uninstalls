-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwcode_db_snippet_version', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mwcode_notice_next_show');
DELETE FROM wp_usermeta WHERE meta_key IN ('mwcode_notice_next_show');
DELETE FROM wp_termmeta WHERE meta_key IN ('mwcode_notice_next_show');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mwcode_notice_next_show');

