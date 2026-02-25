#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wg_cmpr_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_after'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_after'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_after'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_after'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%height'"
