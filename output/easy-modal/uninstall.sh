#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwl_options_group1'
wp option delete '_transient_plugin_slugs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'EasyModal_Theme-%'"
wp option delete 'EasyModal_ThemeList'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'EasyModal_Modal-%'"
wp option delete 'EasyModal_ModalList'
wp option delete 'EasyModal_Settings'
wp option delete 'EasyModal_License'
wp option delete 'EasyModal_License_Status'
wp option delete 'EasyModal_License_LastChecked'
wp option delete 'EasyModal_Version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-license-check' OR option_name LIKE '_site_transient_%-license-check'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-addon-list' OR option_name LIKE '_site_transient_%-addon-list'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_post_modals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_post_modals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_post_modals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_post_modals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emodal_popup_maker_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emodal_popup_maker_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emodal_popup_maker_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emodal_popup_maker_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-modal-pro_autoopen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-modal-pro_autoopen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-modal-pro_autoopen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-modal-pro_autoopen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-modal-pro-exit-modals_autoexit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-modal-pro-exit-modals_autoexit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-modal-pro-exit-modals_autoexit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-modal-pro-exit-modals_autoexit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy-modal-pro-login-modals_loginmodal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy-modal-pro-login-modals_loginmodal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy-modal-pro-login-modals_loginmodal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy-modal-pro-login-modals_loginmodal'"
