-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zeleri_id_imagen_logo', 'woocommerce_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

