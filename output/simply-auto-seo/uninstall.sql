-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cdb_2021_simply_auto_seo_options', 'CDB_2021_SIMPLY_AUTO_SEO_VERSION');

