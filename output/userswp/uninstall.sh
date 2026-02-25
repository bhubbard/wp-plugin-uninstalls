#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uwp_setup_wizard_notice'
wp option delete 'registration'
wp option delete 'uwp_installed_on'
wp option delete 'uwp_activation_redirect'
wp option delete 'uwp_settings'
wp option delete 'uwp_settings_general'
wp option delete 'uwp_settings_extensions'
wp option delete 'uwp_default_data_installed'
wp option delete 'uwp_db_version'
wp option delete 'uwp_notice_try_bootstrap'
wp option delete 'uwp_flush_rewrite'
wp option delete 'fileupload_maxk'
wp option delete 'active_sitewide_plugins'
wp option delete 'ayecode_connect_blog_token'
wp option delete 'ayecode-ui-settings'
wp option delete 'aui_options'
wp option delete 'wp-font-awesome-settings'
wp option delete 'rgmk_google_map_api_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_uwp_addons_section_%' OR option_name LIKE '_site_transient_uwp_addons_section_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'wp-font-awesome-settings-version'

# Clear Cron Jobs
wp cron event delete 'uwp_flush_rewrite_rules'
wp cron event delete 'geodir_plugin_background_installer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_mod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_mod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_mod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_mod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uwp_register_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uwp_register_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uwp_register_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uwp_register_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_uwp_social_login_no_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_uwp_social_login_no_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_uwp_social_login_no_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_uwp_social_login_no_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_update_email_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_update_email_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_update_email_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_update_email_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_hide_from_listing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_hide_from_listing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_hide_from_listing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_hide_from_listing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_seo_author_disabled_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_seo_author_disabled_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_seo_author_disabled_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_seo_author_disabled_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_usermeta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_usermeta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_usermeta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_usermeta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_dummy_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_dummy_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_dummy_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_dummy_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_mute_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_mute_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_mute_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_mute_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uwp_1100_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uwp_1100_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uwp_1100_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uwp_1100_content'"
