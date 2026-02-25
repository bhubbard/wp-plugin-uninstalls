#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uwp_social_db_version'
wp option delete 'uwp-social-authuri-notice-dismissed'
wp option delete 'uwp_settings'

# Delete Transients
wp transient delete '_uwp_social_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uwp_social_profile_incomplete_%' OR option_name LIKE '_site_transient_uwp_social_profile_incomplete_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_uwp_social_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_uwp_social_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_uwp_social_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_uwp_social_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uwp_register_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uwp_register_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uwp_register_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uwp_register_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_uwp_social_login_no_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_uwp_social_login_no_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_uwp_social_login_no_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_uwp_social_login_no_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_social_login_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_social_login_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_social_login_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_social_login_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_mod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_mod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_mod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_mod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_current_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_current_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_current_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_current_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_social_user_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_social_user_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_social_user_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_social_user_image'"
