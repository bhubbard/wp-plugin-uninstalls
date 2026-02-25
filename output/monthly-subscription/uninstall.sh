#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscription_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscription_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscription_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscription_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_unit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_unit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_unit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_unit'"
