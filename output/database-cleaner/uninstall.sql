-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron', 'dbclnr_options', 'dbclnr_fake_option', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news', 'dbclnr_fake', 'dbclnr_fake_for_timeout');
DELETE FROM wp_options WHERE option_name LIKE 'dbclnr_%';
DELETE FROM wp_options WHERE option_name LIKE 'sclegn_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_bis';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_bis';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_bis';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_bis';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_oembed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_oembed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_oembed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_oembed_%';

