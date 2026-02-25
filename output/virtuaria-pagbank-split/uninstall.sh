#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'virtuaria_pagbank_shipping_version'
wp option delete 'woocommerce_virt_pagseguro_settings'
wp option delete 'virtuaria_pagbank_split_db'

# Delete Transients
wp transient delete 'virtuaria_new_receiver'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtuaria_receiver'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtuaria_receiver'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtuaria_receiver'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtuaria_receiver'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_receiver_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_receiver_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_receiver_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_receiver_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
