#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_url_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_url_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_url_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_url_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_url'"
