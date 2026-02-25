#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avatar_default_wp_user_avatar'
wp option delete 'wp_user_avatar_disable_gravatar'
wp option delete 'wp_user_avatar_resize_crop'
wp option delete 'wp_user_avatar_resize_h'
wp option delete 'wp_user_avatar_resize_upload'
wp option delete 'wp_user_avatar_resize_w'
wp option delete 'wp_user_cover_upload_size_limit'
wp option delete 'wp_user_avatar_upload_size_limit'
wp option delete 'wp_user_cover_default_image_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'wp_user_avatar_default_avatar_updated'
wp option delete 'wp_user_avatar_users_updated'
wp option delete 'wp_user_avatar_media_updated'
wp option delete 'ppress_db_ver'
wp option delete 'ppress_license_key'
wp option delete 'ppress_connect_token'
wp option delete 'ppress_abdc_options'
wp option delete 'ppress_plugin_activated'
wp option delete 'ppress_new_v4_install'
wp option delete 'ppress_dismiss_leave_review_forever'
wp option delete 'ppress_install_date'
wp option delete 'ppress_cpf_select_multi_selectable'
wp option delete 'ppress_license_status'
wp option delete 'ppress_license_expired_status'
wp option delete 'fwp_dismiss_fwpadnotice'
wp option delete 'ppress_debug_log_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ppressbfnote_dismiss_adnotice_%'"
wp option delete 'ppressbfnote2022_dismiss_adnotice'
wp option delete 'ppress_is_from_wp_user_avatar'
wp option delete 'ppress_checkout_fields'
wp option delete 'ppress_login_redirect_rules'
wp option delete 'ppress_extension_manager'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pand-%'"
wp option delete 'wp_user_avatar_load_scripts'
wp option delete 'wpua_has_gravatar'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_geoip_%' OR option_name LIKE '_site_transient_geoip_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yolo-plugin-info-%' OR option_name LIKE '_site_transient_yolo-plugin-info-%'"
wp transient delete 'ppress_check_protection_files'

# Clear Cron Jobs
wp cron event delete 'ppress_daily_recurring_job'
wp cron event delete 'wp_ppress_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_profile_cover_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_profile_cover_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_profile_cover_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_profile_cover_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_profile_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_profile_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_profile_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_profile_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_uploaded_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_uploaded_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_uploaded_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_uploaded_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_signup_melange_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_signup_melange_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_signup_melange_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_signup_melange_via'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pp_signup_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pp_signup_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pp_signup_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pp_signup_via'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
