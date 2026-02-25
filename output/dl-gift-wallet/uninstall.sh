#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_giftwallet_store_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_giftwallet_store_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_giftwallet_store_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_giftwallet_store_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_giftwallet_is_gift_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_giftwallet_is_gift_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_giftwallet_is_gift_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_giftwallet_is_gift_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_giftwallet_allow_custom_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_giftwallet_allow_custom_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_giftwallet_allow_custom_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_giftwallet_allow_custom_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_giftwallet_min_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_giftwallet_min_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_giftwallet_min_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_giftwallet_min_amount'"
