#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lcce_global_head_code'
wp option delete 'lcce_global_footer_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcce_head_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcce_head_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcce_head_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcce_head_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jph_head_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jph_head_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jph_head_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jph_head_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lcce_footer_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lcce_footer_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lcce_footer_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lcce_footer_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jph_footer_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jph_footer_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jph_footer_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jph_footer_code'"
