#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'card_oracle_settings'
wp option delete 'card_oracle_demo_reading_id'
wp option delete 'card_oracle_reading_list'
wp option delete 'card_oracle_mailchimp_api_key'
wp option delete 'card_oracle_integration'
wp option delete 'card_oracle_payment_provider'
wp option delete 'card_oracle_activecampaign_api_key'
wp option delete 'card_oracle_activecampaign_url'
wp option delete 'card_oracle_thenewsletter_key'
wp option delete 'card_oracle_thenewsletter_secret'
wp option delete 'co_wizard'
wp option delete 'card_oracle_powered_by'
wp option delete 'card_oracle_allow_email'
wp option delete 'card_oracle_from_email'
wp option delete 'card_oracle_from_email_name'
wp option delete 'card_oracle_stripe_sandbox'
wp option delete 'card_oracle_affiliate_link'
wp option delete 'rewrite_rules'
wp option delete 'active_sitewide_plugins'
wp option delete 'card_oracle_version'
wp option delete 'card_oracle_email_text'
wp option delete 'card_oracle_subscribe'
wp option delete 'card_oracle_email_consent_text'
wp option delete 'card_oracle_paypal_button_text'
wp option delete 'card_oracle_payment_button_text'
wp option delete 'card_oracle_paypal_currency'
wp option delete 'card_oracle_payment_currency'
wp option delete 'card_oracle_mailchimp_send'
wp option delete 'card_oracle_mailchimp_daily'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'card_oracle_%'"
wp option delete 'card_oracle_multiple_positions'
wp option delete 'card_oracle_email_success'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_card_oracle_reading_limit_notice_%' OR option_name LIKE '_site_transient_card_oracle_reading_limit_notice_%'"
wp transient delete 'card_oracle_system_status_wp_version_check'
wp transient delete 'card_oracle_orphaned_shortcodes'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'card-oracle_cron_refresh_cache'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_oracle_onboarding_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_oracle_onboarding_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_oracle_onboarding_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_oracle_onboarding_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'question_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'question_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'question_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'question_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_oracle_demo_package'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_oracle_demo_package'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_oracle_demo_package'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_oracle_demo_package'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_co_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_co_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_co_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_co_log_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'footer_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'footer_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'footer_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'footer_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'before_cards_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'before_cards_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'before_cards_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'before_cards_text'"
