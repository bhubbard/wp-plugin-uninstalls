#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sales-page-builders'
wp option delete 'sales-page-builder-active'
wp option delete 'spa-woo-checkout-config'
wp option delete 'spa-woo-thankyou-config'
wp option delete 'sales_page_flush_rewrite_rules_flag'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'spa_bw_settings'
wp option delete 'spa_pw_settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_css_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_css_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_css_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_css_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_history_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_history_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_history_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_history_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feedback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feedback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feedback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feedback'"
