-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gartentechnik_com_einstellungen', 'gartentechnik_com_gtcom_einstellungs_cache', 'gartentechnik_com_api_timeoutfehler', 'gartentechnik_com_standardseite_cache', 'gartentechnik_com_rss_import_bereits_importierte_quell_links');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kategorie', 'filter', 'tiefe', 'gartentechnik_com_rss_import_content_checksum', 'gartentechnik_com_rss_import_quell_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('kategorie', 'filter', 'tiefe', 'gartentechnik_com_rss_import_content_checksum', 'gartentechnik_com_rss_import_quell_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('kategorie', 'filter', 'tiefe', 'gartentechnik_com_rss_import_content_checksum', 'gartentechnik_com_rss_import_quell_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kategorie', 'filter', 'tiefe', 'gartentechnik_com_rss_import_content_checksum', 'gartentechnik_com_rss_import_quell_link');

