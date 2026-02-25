-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_ts_gtin', '_default_delivery_time', 'de_DE', 'en_US', 'es_ES', 'fr_FR');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_ts_gtin', '_default_delivery_time', 'de_DE', 'en_US', 'es_ES', 'fr_FR');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_ts_gtin', '_default_delivery_time', 'de_DE', 'en_US', 'es_ES', 'fr_FR');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_ts_gtin', '_default_delivery_time', 'de_DE', 'en_US', 'es_ES', 'fr_FR');

