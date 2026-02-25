#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'access_denied_message'
wp option delete 'post_types'
wp option delete 'meta_box_location'
wp option delete 'meta_box_priority'
wp option delete 'enable_post_visibility'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_noacs_msg_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_noacs_msg_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_noacs_msg_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_noacs_msg_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_noacs_custom_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_noacs_custom_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_noacs_custom_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_noacs_custom_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_group_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_group_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_group_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_group_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_public_ind'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_public_ind'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_public_ind'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_public_ind'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_ctrl_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_ctrl_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_ctrl_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_ctrl_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_meta_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_meta_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_meta_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_meta_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_meta_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_meta_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_meta_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_meta_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_meta_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_meta_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_meta_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_meta_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'postaccesscontroller_meta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'postaccesscontroller_meta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'postaccesscontroller_meta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'postaccesscontroller_meta_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'postaccesscontroller_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'postaccesscontroller_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'postaccesscontroller_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'postaccesscontroller_admin_notices'"
