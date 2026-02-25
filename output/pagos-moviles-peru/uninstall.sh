#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pago_moviles_peru_version'
wp option delete 'yape_a1tiendas_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yape_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yape_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yape_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yape_img'"
