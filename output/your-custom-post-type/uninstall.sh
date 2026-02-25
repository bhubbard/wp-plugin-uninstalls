#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_business_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_business_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_business_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_business_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reviewer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reviewer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reviewer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reviewer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_business_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_business_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_business_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_business_rating'"
