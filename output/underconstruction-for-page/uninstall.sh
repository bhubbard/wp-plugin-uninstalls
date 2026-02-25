#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'un_theme1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hvk_ucfp_meta_box_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hvk_ucfp_meta_box_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hvk_ucfp_meta_box_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hvk_ucfp_meta_box_check'"
