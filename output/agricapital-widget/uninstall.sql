-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('agriwi_codigo_referido', 'agriwi_mostrar_en_woocommerce');

