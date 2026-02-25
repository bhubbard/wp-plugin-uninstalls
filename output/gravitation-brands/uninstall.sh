#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brands_post_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brands_post_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brands_post_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brands_post_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brands_post_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brands_post_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brands_post_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brands_post_url'"
