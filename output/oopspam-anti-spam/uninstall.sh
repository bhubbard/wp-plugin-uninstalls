#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oopspamantispam_settings'
wp option delete 'oopspamantispam_contextai_settings'
wp option delete 'oopspam_rt_db_version'
wp option delete 'oopspam_db_version'
wp option delete 'manual_moderation_settings'
wp option delete 'oopspam_admin_emails'
wp option delete 'oopspamantispam_misc_settings'
wp option delete 'oopspamantispam_privacy_settings'
wp option delete 'oopspamantispam_ratelimit_settings'
wp option delete 'woocommerce_feature_order_attribution_enabled'
wp option delete 'oopspamantispam_privacy_migration_completed'
wp option delete 'oopspam_wizard_completed'
wp option delete 'oopspamantispam_ipfiltering_settings'
wp option delete 'oopspam_countryallowlist'
wp option delete 'oopspam_countryblocklist'
wp option delete 'oopspam_country_always_allow'
wp option delete 'oopspam_languageallowlist'
wp option delete 'over_rate_limit'
wp option delete 'oopspam_proxy_notice_dismissed'
wp option delete 'oopspam-activation-date'
wp option delete 'oopspam_is_check_for_length'

# Delete Transients
wp transient delete 'oopspam_bulk_processed_ids'
wp transient delete 'oopspam_activation_redirect'
wp transient delete 'oopspam_options_redirect'

# Clear Cron Jobs
wp cron event delete 'oopspam_cleanup_ham_entries_cron'
wp cron event delete 'oopspam_cleanup_spam_entries_cron'
wp cron event delete 'oopspam_cleanup_ratelimit_entries_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
