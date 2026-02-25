#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_grv_sp_plugin_do_activation_redirect'
wp option delete 'wp_grv_sp_social_proofing_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_grv_sp_social_proofing_meta_box_btn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_grv_sp_social_proofing_meta_box_btn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_grv_sp_social_proofing_meta_box_btn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_grv_sp_social_proofing_meta_box_btn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_extras'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_extras'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_extras'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_extras'"
