#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordpress_api_key'
wp option delete 'theme_mods_zerif-lite'
wp option delete 'wpforms_version_upgraded_from'
wp option delete 'pirate_forms_settings_array'
wp option delete 'disallowed_keys'
wp option delete 'pirate_forms_subscribe'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'themeisle_sdk_notifications'
wp option delete 'otter_reference_key'
wp option delete 'optimole_reference_key'
wp option delete 'rop_reference_key'
wp option delete 'neve_reference_key'
wp option delete 'hyve_reference_key'
wp option delete 'wp_full_pay_reference_key'
wp option delete 'feedzy_reference_key'
wp option delete 'themeisle_sdk_promotions_otter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp transient delete 'pirate_forms_gdpr_notice0'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pirate_forms_gdpr_notice%' OR option_name LIKE '_site_transient_pirate_forms_gdpr_notice%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themeisle_sdk_cache_token'
wp transient delete 'themeisle_sdk_feed_items'
wp transient delete 'themeisle_sdk_products'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%act_err' OR option_name LIKE '_site_transient_%act_err'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"
wp transient delete 'tsk_attachment_count'
wp transient delete 'tsk_posts_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_theme_info_%' OR option_name LIKE '_site_transient_ti_theme_info_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_sdk_pause_%' OR option_name LIKE '_site_transient_ti_sdk_pause_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%mail-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%mail-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%mail-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mail-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%mail-status-reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%mail-status-reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%mail-status-reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%mail-status-reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pirate_forms_farewell_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pirate_forms_farewell_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pirate_forms_farewell_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pirate_forms_farewell_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Contact email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Contact email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Contact email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Contact email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%confirm-mail-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%confirm-mail-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%confirm-mail-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%confirm-mail-status'"
