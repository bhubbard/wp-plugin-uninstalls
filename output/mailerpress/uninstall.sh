#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailerpress_signup_confirmation'
wp option delete 'mailerpress_global_email_senders'
wp option delete 'mailerpress_default_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_html'"
wp option delete 'mailerpress_frequency_sending'
wp option delete 'mailerpress_email_services'
wp option delete 'mailerpress_global_typography'
wp option delete 'mailerpress_license_activated'
wp option delete 'mailerpress_bounce_config'
wp option delete 'mailerpress_theme'
wp option delete 'mailerpress_ai_config'
wp option delete 'mailerpress_fonts_v2'
wp option delete 'mailerpress_activated'
wp option delete 'mailerpress_version'
wp option delete 'rewrite_rules'
wp option delete 'mailerpress_plugin_version'
wp option delete 'mailerpress_default_categories_added'
wp option delete 'mailerpress_old_automation_tables_dropped'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7_mailerpress_%'"
wp option delete 'mailerpress_ab_test_scheduled'
wp option delete 'mailerpress_check_bounces_interval'
wp option delete 'woocommerce_currency_pos'
wp option delete 'mailerpress_webhook_configs'
wp option delete 'mailerpress_outgoing_webhook_configs'
wp option delete 'mailerpress_fonts'
wp option delete 'mailerpress_esp_config'
wp option delete 'mailerpress_senders'
wp option delete 'mailerpress_outgoing_webhook_secret'
wp option delete 'mailerpress_access_tokens_scheduled'
wp option delete 'mailerpress_import_chunks_migration_1_2_2'
wp option delete 'mailerpress_webhooks_disable_async'

# Delete Transients
wp transient delete 'mailerpress_google_fonts'
wp transient delete 'mailerpress_update_info'
wp transient delete 'mailerpress_list'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'mailerpress_cleanup'
wp cron event delete 'mailerpress_deferred_campaign_created'
wp cron event delete 'mailerpress_ab_test_send_winner'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailerpress_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailerpress_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailerpress_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailerpress_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailerpress_setup_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailerpress_setup_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailerpress_setup_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailerpress_setup_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailerpress_fullscreen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailerpress_fullscreen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailerpress_fullscreen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailerpress_fullscreen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailerpress_go_pro_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailerpress_go_pro_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailerpress_go_pro_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailerpress_go_pro_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailerpress_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailerpress_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailerpress_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailerpress_category_id'"
