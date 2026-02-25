-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bizumredsys_settings', 'woocommerce_googlepayredirecredsys_settings', 'woocommerce_inespayredsys_settings', 'woocommerce_redsys_settings', 'woocommerce-redsys-version', 'woocommerce-redsys-rate', 'hide-new-version-redsys-notice', 'telegram-redsys-notice');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'txnid_%';
DELETE FROM wp_options WHERE option_name LIKE 'token_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'redsys_signature_%';
DELETE FROM wp_options WHERE option_name LIKE '%_redsys_refund';
DELETE FROM wp_options WHERE option_name LIKE 'redys_order_temp_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_accept_haders', '_billing_agente_navegador_field', '_billing_idioma_navegador_field', '_billing_altura_pantalla_field', '_billing_anchura_pantalla_field', '_billing_profundidad_color_field', '_billing_diferencia_horaria_field', 'last_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('_accept_haders', '_billing_agente_navegador_field', '_billing_idioma_navegador_field', '_billing_altura_pantalla_field', '_billing_anchura_pantalla_field', '_billing_profundidad_color_field', '_billing_diferencia_horaria_field', 'last_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('_accept_haders', '_billing_agente_navegador_field', '_billing_idioma_navegador_field', '_billing_altura_pantalla_field', '_billing_anchura_pantalla_field', '_billing_profundidad_color_field', '_billing_diferencia_horaria_field', 'last_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_accept_haders', '_billing_agente_navegador_field', '_billing_idioma_navegador_field', '_billing_altura_pantalla_field', '_billing_anchura_pantalla_field', '_billing_profundidad_color_field', '_billing_diferencia_horaria_field', 'last_update');

