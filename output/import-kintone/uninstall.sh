#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kintone_to_wp_kintone_url'
wp option delete 'kintone_to_wp_kintone_api_token'
wp option delete 'kintone_to_wp_target_appid'
wp option delete 'kintone_to_wp_reflect_post_type'
wp option delete 'kintone_to_wp_kintone_app_form_data'
wp option delete 'kintone_to_wp_kintone_field_code_for_post_title'
wp option delete 'kintone_to_wp_kintone_field_code_for_post_contents'
wp option delete 'kintone_to_wp_kintone_field_code_for_terms'
wp option delete 'kintone_to_wp_setting_custom_fields'
wp option delete 'kintone_to_wp_kintone_field_code_for_featured_image'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kintone_record_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kintone_record_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kintone_record_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kintone_record_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_name'"
