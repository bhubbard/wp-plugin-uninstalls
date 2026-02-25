#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'apg_shipping_clases_envio'
wp transient delete 'apg_shipping_roles_usuario'
wp transient delete 'apg_shipping_zonas_de_envio'
wp transient delete 'apg_shipping_atributos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_apg_shipping_icono_%' OR option_name LIKE '_site_transient_apg_shipping_icono_%'"
wp transient delete 'apg_shipping_plugin'
wp transient delete 'apg_shipping_metodos_de_pago'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_apg_shipping_%' OR option_name LIKE '_site_transient_apg_shipping_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_apg_shipping_metodos_envio_%' OR option_name LIKE '_site_transient_apg_shipping_metodos_envio_%'"

