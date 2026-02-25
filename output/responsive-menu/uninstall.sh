#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rm_review_message_trigger'
wp option delete 'rmp_global_setting_options'
wp option delete 'responsive_menu_version'
wp option delete 'rmp_migrate10111'
wp option delete 'rmp_migrate10112'
wp option delete 'responsive_menu_pro_license_key'
wp option delete 'rmp_dynamic_file_version'

# Delete Transients
wp transient delete 'og-admin-notice-activation-pro'
wp transient delete 'og-admin-notice-activation'
wp transient delete 'rmp_theme_api_response'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmp_menu_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmp_menu_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmp_menu_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmp_menu_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_rmp_mega_menu_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_rmp_mega_menu_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_rmp_mega_menu_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_rmp_mega_menu_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmp_lagecy_menu_line_space'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmp_lagecy_menu_line_space'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmp_lagecy_menu_line_space'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmp_lagecy_menu_line_space'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rmp_upgrade_pro_admin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rmp_upgrade_pro_admin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rmp_upgrade_pro_admin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rmp_upgrade_pro_admin_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_login_rmp_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_login_rmp_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_login_rmp_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_login_rmp_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_nonlogin_rmp_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_nonlogin_rmp_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_nonlogin_rmp_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_nonlogin_rmp_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_next_update_notice_close'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_next_update_notice_close'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_next_update_notice_close'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_next_update_notice_close'"
