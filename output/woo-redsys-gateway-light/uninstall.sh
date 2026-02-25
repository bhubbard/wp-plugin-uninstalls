#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'txnid_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'token_type_%'"
wp option delete 'woocommerce_bizumredsys_settings'
wp option delete 'woocommerce_googlepayredirecredsys_settings'
wp option delete 'woocommerce_inespayredsys_settings'
wp option delete 'woocommerce_redsys_settings'
wp option delete 'woocommerce-redsys-version'
wp option delete 'woocommerce-redsys-rate'
wp option delete 'hide-new-version-redsys-notice'
wp option delete 'telegram-redsys-notice'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_redsys_signature_%' OR option_name LIKE '_site_transient_redsys_signature_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_redsys_refund' OR option_name LIKE '_site_transient_%_redsys_refund'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_redys_order_temp_%' OR option_name LIKE '_site_transient_redys_order_temp_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accept_haders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accept_haders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accept_haders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accept_haders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_agente_navegador_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_agente_navegador_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_agente_navegador_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_agente_navegador_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_idioma_navegador_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_idioma_navegador_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_idioma_navegador_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_idioma_navegador_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_altura_pantalla_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_altura_pantalla_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_altura_pantalla_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_altura_pantalla_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_anchura_pantalla_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_anchura_pantalla_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_anchura_pantalla_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_anchura_pantalla_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_profundidad_color_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_profundidad_color_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_profundidad_color_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_profundidad_color_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_diferencia_horaria_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_diferencia_horaria_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_diferencia_horaria_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_diferencia_horaria_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
