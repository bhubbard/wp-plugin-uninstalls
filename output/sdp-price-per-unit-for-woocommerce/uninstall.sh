#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sppu_price_per_unit'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp transient delete 'sppu-activado'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sppu_precio_unidad_mostrar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sppu_precio_unidad_mostrar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sppu_precio_unidad_mostrar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sppu_precio_unidad_mostrar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sppu_precio_unidad_precio_por'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sppu_precio_unidad_precio_por'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sppu_precio_unidad_precio_por'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sppu_precio_unidad_precio_por'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sppu_precio_unidad_separador'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sppu_precio_unidad_separador'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sppu_precio_unidad_separador'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sppu_precio_unidad_separador'"
