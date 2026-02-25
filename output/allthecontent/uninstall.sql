-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atc-importer-processing', 'atc_importer_last_run');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('atc_license_modification', 'atc_license_multimediatisation', 'atc_license_localisation', 'atc_license_distribution', 'atc_themes', 'atc_version', 'atc_delivery_id', 'atc_refid', 'lang', 'characters_count', 'words_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('atc_license_modification', 'atc_license_multimediatisation', 'atc_license_localisation', 'atc_license_distribution', 'atc_themes', 'atc_version', 'atc_delivery_id', 'atc_refid', 'lang', 'characters_count', 'words_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('atc_license_modification', 'atc_license_multimediatisation', 'atc_license_localisation', 'atc_license_distribution', 'atc_themes', 'atc_version', 'atc_delivery_id', 'atc_refid', 'lang', 'characters_count', 'words_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('atc_license_modification', 'atc_license_multimediatisation', 'atc_license_localisation', 'atc_license_distribution', 'atc_themes', 'atc_version', 'atc_delivery_id', 'atc_refid', 'lang', 'characters_count', 'words_count');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'atc_license_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'atc_license_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'atc_license_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'atc_license_%';

