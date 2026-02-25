-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpseo_titles', 'aioseop_options', 'optimizme_mazen_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'optimizme_mazen_jwt_secret_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('optimizme_canonical', '_aviaLayoutBuilder_active', 'optimizme_metatitle');
DELETE FROM wp_usermeta WHERE meta_key IN ('optimizme_canonical', '_aviaLayoutBuilder_active', 'optimizme_metatitle');
DELETE FROM wp_termmeta WHERE meta_key IN ('optimizme_canonical', '_aviaLayoutBuilder_active', 'optimizme_metatitle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('optimizme_canonical', '_aviaLayoutBuilder_active', 'optimizme_metatitle');

