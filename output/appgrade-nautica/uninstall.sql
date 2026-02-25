-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nautica_app_grade_db_version', 'APPGRADENAUTICA_NAUTICA_APP_GRADE_TOKEN', 'APPGRADENAUTICA_SINCRO_PRODOTTI_SPED', 'APPGRADENAUTICA_SINCRO_CORSO_LEZIONI', 'APPGRADENAUTICA_CORSO_LEZIONI_SEND_EMAIL', 'APPGRADENAUTICA_SINCRO_CORSO_PACCHETTI', 'APPGRADENAUTICA_SINCRO_PRODOTTI', 'APPGRADENAUTICA_SINCRO_PRODOTTI_NAME', 'APPGRADENAUTICA_SINCRO_PRODOTTI_FATTURA', 'APPGRADENAUTICA_SINCRO_PRODOTTI_CODE');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wdn', '_id_corso_lezione');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wdn', '_id_corso_lezione');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wdn', '_id_corso_lezione');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wdn', '_id_corso_lezione');

