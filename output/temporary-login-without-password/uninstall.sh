#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tlwp_settings'
wp option delete 'wtlwp_one_click_user_status'
wp option delete 'tlwp_close_promotion_notice'
wp option delete 'tlwp_mailer_is_promotion_notice_dismissed'
wp option delete 'tlwp_mailer_is_tried'
wp option delete 'tlwp_db_version'
wp option delete 'tlwp_update_tasks_to_process'
wp option delete 'tlwp_update_processed_tasks'
wp option delete 'temporary_logins_data'
wp option delete 'tlwp_plugin_activation_time'
wp option delete 'tlwp_plugin_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'tlwp_do_activation_redirect'

# Delete Transients
wp transient delete 'wtlwp_one_click_user_id'
wp transient delete 'wtlwp_one_click_user_active'
wp transient delete 'tlwp_installing'
wp transient delete 'tlwp_updating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_max_login_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_max_login_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_max_login_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_max_login_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_redirect_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_redirect_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_redirect_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_redirect_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_welcome_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wtlwp_login_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wtlwp_login_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wtlwp_login_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wtlwp_login_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time'"
