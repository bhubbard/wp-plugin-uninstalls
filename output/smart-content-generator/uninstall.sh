#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deepaibrain_openapi_api'
wp option delete 'deepaibrain_premium_plugin_data'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deepaibrain_wpai_post_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deepaibrain_wpai_post_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deepaibrain_wpai_post_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deepaibrain_wpai_post_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_custom_prompt_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_custom_prompt_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_custom_prompt_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_custom_prompt_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ai_custom_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ai_custom_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ai_custom_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ai_custom_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deepaibrain_wpai_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deepaibrain_wpai_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deepaibrain_wpai_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deepaibrain_wpai_meta_description'"
