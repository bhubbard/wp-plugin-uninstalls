#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ysl_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ysl_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ysl_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ysl_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ysl_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ysl_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ysl_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ysl_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ysl_nav_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ysl_nav_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ysl_nav_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ysl_nav_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ysl_dot_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ysl_dot_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ysl_dot_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ysl_dot_color'"
