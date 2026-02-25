-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('metrica_options', 'yandex_metrica_db_version', 'yandex_metrica_installing');

