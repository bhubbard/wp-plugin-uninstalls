#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_use_wp_submenu'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_opt_in'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_promot'"
wp option delete 'wpmastertoolkit_credentials_tab'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_plugins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_advanced_debug_mode'"
wp option delete 'wpmastertoolkit_apple_touch_icon'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_move_login_url'"

# Delete Transients
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wpmastertoolkit_daily_regenerate_assets'
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_maybe_auto_update'
wp cron event delete 'wpmtk_delete_expired_temp_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'code_snippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'code_snippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'code_snippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'code_snippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'code_snippet_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'code_snippet_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'code_snippet_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'code_snippet_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snippet_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snippet_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snippet_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snippet_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snippet_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snippet_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snippet_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snippet_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WPMastertoolkit_open_new_tab_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WPMastertoolkit_open_new_tab_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WPMastertoolkit_open_new_tab_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WPMastertoolkit_open_new_tab_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WPMastertoolkit_open_new_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WPMastertoolkit_open_new_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WPMastertoolkit_open_new_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WPMastertoolkit_open_new_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmastertoolkit_external_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmastertoolkit_external_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmastertoolkit_external_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmastertoolkit_external_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WPMastertoolkit_last_login_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WPMastertoolkit_last_login_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WPMastertoolkit_last_login_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WPMastertoolkit_last_login_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmastertoolkit_temporary_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmastertoolkit_temporary_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmastertoolkit_temporary_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmastertoolkit_temporary_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmtk_temporary_login_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmtk_temporary_login_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmtk_temporary_login_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmtk_temporary_login_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmtk_connexion_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmtk_connexion_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmtk_connexion_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmtk_connexion_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmtk_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmtk_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmtk_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmtk_login_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmtk_temporary_login_validity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmtk_temporary_login_validity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmtk_temporary_login_validity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmtk_temporary_login_validity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmtk_protect_other_admin_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmtk_protect_other_admin_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmtk_protect_other_admin_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmtk_protect_other_admin_users'"
