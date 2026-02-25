-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pluginperseo_configuracion', 'pluginperseo_parametros');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_wc_product_gallery_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_product_gallery_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('PerseoIdentificacion', 'billing_phone', 'billing_address_1', 'PerseoCodigo', 'PerseoID', '_thumbnail_id', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('PerseoIdentificacion', 'billing_phone', 'billing_address_1', 'PerseoCodigo', 'PerseoID', '_thumbnail_id', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('PerseoIdentificacion', 'billing_phone', 'billing_address_1', 'PerseoCodigo', 'PerseoID', '_thumbnail_id', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('PerseoIdentificacion', 'billing_phone', 'billing_address_1', 'PerseoCodigo', 'PerseoID', '_thumbnail_id', '_product_image_gallery');

