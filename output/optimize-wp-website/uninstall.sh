#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'owpw_remove_wp_embed'
wp option delete 'owpw_remove_jquery_migrate'
wp option delete 'owpw_remove_commnet_reply'
wp option delete 'owpw_remove_generator'
wp option delete 'owpw_page_specific_block'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oww_css_postion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oww_css_postion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oww_css_postion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oww_css_postion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oww_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oww_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oww_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oww_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oww_css_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oww_css_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oww_css_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oww_css_file'"
