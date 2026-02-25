#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acadlix_activation_pending'
wp option delete 'acadlix_deactivated_plugin_notice'
wp option delete 'acadlix_addon_social_login_enabled'
wp option delete 'acadlix_addon_bulk_question_upload_enabled'
wp option delete 'acadlix_addon_assignments_enabled'
wp option delete 'acadlix_addon_zoom_integration_enabled'
wp option delete 'acadlix_addon_advanced_report_enabled'
wp option delete 'acadlix_addon_subscriptions_enabled'
wp option delete 'acadlix_addon_data_exporter_enabled'
wp option delete 'acadlix_addon_question_error_reporting_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acadlix_profile_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acadlix_profile_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acadlix_profile_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acadlix_profile_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acadlix_profile_phonecode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acadlix_profile_phonecode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acadlix_profile_phonecode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acadlix_profile_phonecode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acadlix_profile_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acadlix_profile_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acadlix_profile_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acadlix_profile_phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acadlix_profile_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acadlix_profile_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acadlix_profile_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acadlix_profile_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acadlix_profile_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acadlix_profile_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acadlix_profile_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acadlix_profile_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acadlix_profile_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acadlix_profile_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acadlix_profile_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acadlix_profile_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acadlix_profile_zip_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acadlix_profile_zip_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acadlix_profile_zip_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acadlix_profile_zip_code'"
