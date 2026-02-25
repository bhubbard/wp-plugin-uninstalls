#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apg_nif_actualizado'
wp option delete 'apg_nif_settings'

# Delete Transients
wp transient delete 'apg_nif_plugin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_nif'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_nif'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_nif'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_nif'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_nif'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_nif'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_nif'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_nif'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_phone'"
