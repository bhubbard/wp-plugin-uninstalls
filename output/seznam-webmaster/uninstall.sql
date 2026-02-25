-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seznam_webmaster', 'seznam_webmaster_reindex_data');

