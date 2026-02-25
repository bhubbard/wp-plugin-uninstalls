#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultimus_currency_rates'
wp option delete 'alister_property_dictionary'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alister_source_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alister_source_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alister_source_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alister_source_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ali_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ali_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ali_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ali_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'endpoint_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'endpoint_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'endpoint_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'endpoint_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_product'"
