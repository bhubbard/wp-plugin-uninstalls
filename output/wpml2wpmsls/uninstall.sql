-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idealien_ml2msls_options', 'ml2msls_options');
DELETE FROM wp_options WHERE option_name LIKE 'msls_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpml2wpms_baseLanguage', '_wpml2wpms_transLanguages');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpml2wpms_baseLanguage', '_wpml2wpms_transLanguages');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpml2wpms_baseLanguage', '_wpml2wpms_transLanguages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpml2wpms_baseLanguage', '_wpml2wpms_transLanguages');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpml2wpms_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpml2wpms_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpml2wpms_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpml2wpms_%';

