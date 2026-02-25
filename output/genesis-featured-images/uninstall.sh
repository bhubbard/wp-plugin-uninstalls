#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genesis-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%custom_feat_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%custom_feat_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%custom_feat_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%custom_feat_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
