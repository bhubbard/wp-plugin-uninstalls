#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'iaf-headertags-opts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iaf_headertags_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iaf_headertags_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iaf_headertags_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iaf_headertags_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iaf_headertags_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iaf_headertags_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iaf_headertags_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iaf_headertags_keywords'"
