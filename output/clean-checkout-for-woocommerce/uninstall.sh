#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'riffaz_wccc_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_full_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_full_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_full_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_full_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_full_name'"
