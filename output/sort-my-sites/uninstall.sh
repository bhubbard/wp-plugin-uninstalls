#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sort_my_sites_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sort_my_sites_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sort_my_sites_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sort_my_sites_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
