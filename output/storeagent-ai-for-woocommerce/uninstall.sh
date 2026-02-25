#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saai_weekly_update_schedule_time'
wp option delete 'saai_notification_retention_days'
wp option delete 'woocommerce_feature_custom_order_tables_enabled'
wp option delete 'active_sitewide_plugins'
wp option delete 'saai_onboarding_wizard_status'
wp option delete 'saai_chat_widget_settings'
wp option delete 'saai_chat_post_types_settings'
wp option delete 'saai_chat_post_types'
wp option delete 'storeagent_api_connected'
wp option delete 'storeagentai_installed_by'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'saai_%'"

# Delete Transients
wp transient delete 'saai_ai_memory_bulk_action_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_saai_product_question_validation_error_%' OR option_name LIKE '_site_transient_saai_product_question_validation_error_%'"

# Clear Cron Jobs
wp cron event delete 'saai_cleanup_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_question'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_question'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_question'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_question'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
