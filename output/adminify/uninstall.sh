#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_jltadminbar_settings'
wp option delete '_wpadminify_custom_js_css'
wp option delete '_wpadminify'
wp option delete 'wp_adminify_multisite_exclude'
wp option delete 'wpadminify_notice_discount_code'
wp option delete '_wpadminify_plugin_update_info_notice'
wp option delete '_wpadminify_plugin_conflict'
wp option delete 'jltwp_adminify_what_we_collect'
wp option delete 'jltwp_adminify_sheet_promo_data'
wp option delete 'jltwp_adminify_sheet_promo_data_hash'
wp option delete 'dashboard_widgets'
wp option delete 'sidebar_widgets'
wp option delete 'aam_access_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'jltwp_adminify_login'
wp option delete '_wpadminify_redirect_urls'
wp option delete '_wpadminify_backup'
wp option delete 'google_pagepseed_api_key'
wp option delete 'jltwp_adminify_setup_wizard_ran'
wp option delete 'wp_adminify_addon__is_eligible_for_coupon'
wp option delete 'wp_adminify_addon__coupon_is_deleted'
wp option delete 'wp_adminify_addon__coupon'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wp_adminify_version'
wp option delete 'jltwp_adminify_activation_time'
wp option delete 'jltwp_adminify_customizer_flush_url'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_adminify_rollback_versions_%' OR option_name LIKE '_site_transient_wp_adminify_rollback_versions_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jltwp_adminify-plugin-info-%' OR option_name LIKE '_site_transient_jltwp_adminify-plugin-info-%'"
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete '_adminify_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'jltwp_adminify_sheet_promo_data_remote_sync'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpadminify_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpadminify_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpadminify_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpadminify_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adminify_last_login_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adminify_last_login_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adminify_last_login_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adminify_last_login_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jltwp_adminify_dismissed_welcome_panel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jltwp_adminify_dismissed_welcome_panel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jltwp_adminify_dismissed_welcome_panel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jltwp_adminify_dismissed_welcome_panel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_shortcodes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_adminify_fodler_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_adminify_fodler_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_adminify_fodler_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_adminify_fodler_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_adminify_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_adminify_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_adminify_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_adminify_errors_%'"
