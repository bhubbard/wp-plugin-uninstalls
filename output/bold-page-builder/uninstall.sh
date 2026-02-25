#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bt_bb_settings'
wp option delete 'bt_bb_custom_css'
wp option delete 'bt_bb_mapping_secondary'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bt_bb_rating_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bt_bb_rating_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bt_bb_rating_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bt_bb_rating_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bt_bb_rating_notice_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bt_bb_rating_notice_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bt_bb_rating_notice_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bt_bb_rating_notice_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bt_bb_plugin_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bt_bb_plugin_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bt_bb_plugin_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bt_bb_plugin_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_meta_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
