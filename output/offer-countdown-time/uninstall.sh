#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oct_offer_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oct_offer_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oct_offer_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oct_offer_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oct_enable_countdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oct_enable_countdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oct_enable_countdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oct_enable_countdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oct_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oct_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oct_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oct_custom_message'"
