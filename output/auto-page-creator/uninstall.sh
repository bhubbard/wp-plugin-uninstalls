#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
