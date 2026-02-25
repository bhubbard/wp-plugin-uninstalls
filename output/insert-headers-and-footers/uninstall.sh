#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcode_install'
wp option delete 'wpcode_admin_notices'
wp option delete 'ihaf_activated'
wp option delete 'wpcode_usage_tracking_config'
wp option delete 'wpcode_imported'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ihaf_insert_%'"
wp option delete 'ihaf_insert_header'
wp option delete 'ihaf_insert_footer'
wp option delete 'ihaf_insert_body'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpcode_snippets_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcode_alt_cache_%'"
wp option delete 'wpcode_library_api_auth'
wp option delete 'wpcode_connect_token'
wp option delete 'wpcode_connect'
wp option delete 'wpcode_send_usage_last_run'
wp option delete 'wpcode_settings'

# Delete Transients
wp transient delete 'wpcode_lite_just_activated'
wp transient delete 'wpcode_deploy_snippet_id'
wp transient delete 'wpcode_used_library_snippets'
wp transient delete 'wpcode_just_activated'

# Clear Cron Jobs
wp cron event delete 'wpcode_admin_notifications_update'
wp cron event delete 'wpcode_usage_tracking_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_compress_output'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_compress_output'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_compress_output'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_compress_output'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcode_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcode_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcode_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcode_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcode_dismissed_review_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcode_dismissed_review_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcode_dismissed_review_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcode_dismissed_review_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcode_snippet_activate_notice_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcode_snippet_activate_notice_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcode_snippet_activate_notice_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcode_snippet_activate_notice_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcode_default_code_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcode_default_code_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcode_default_code_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcode_default_code_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_last_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_last_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_last_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_last_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_recently_deactivated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_recently_deactivated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_recently_deactivated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_recently_deactivated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_recently_deactivated_error_line'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_recently_deactivated_error_line'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_recently_deactivated_error_line'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_recently_deactivated_error_line'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_snippet_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_snippet_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_snippet_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_snippet_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_library_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_library_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_library_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_library_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_auto_insert'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_auto_insert'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_auto_insert'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_auto_insert'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_auto_insert_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_auto_insert_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_auto_insert_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_auto_insert_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_conditional_logic_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_conditional_logic_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_conditional_logic_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_conditional_logic_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_conditional_logic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_conditional_logic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_conditional_logic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_conditional_logic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_library_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_library_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_library_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_library_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_generator_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_generator_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_generator_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_generator_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_location_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_location_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_location_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_location_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_cloud_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_cloud_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_cloud_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_cloud_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_custom_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_custom_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_custom_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_custom_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_device_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_device_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_device_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_device_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_shortcode_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_shortcode_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_shortcode_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_shortcode_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_load_as_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_load_as_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_load_as_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_load_as_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpcode_compiled_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpcode_compiled_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpcode_compiled_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpcode_compiled_code'"
