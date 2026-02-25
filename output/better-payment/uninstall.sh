#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'better_payment_plugin_installed_fresh'
wp option delete 'better_payment_plugin_installed_time_fresh'
wp option delete 'better_payment_progress_bar_dismissed_expiry_date'
wp option delete 'better_payment_version'
wp option delete 'better_payment_setup_wizard'
wp option delete 'better_payment_sale_info_dismissed'
wp option delete 'better_payment_progress_bar_dismissed'
wp option delete 'better_payment_settings'
wp option delete 'better_payment_campaigns'
wp option delete 'better_payment_settings_opt_in'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_allow_tracking'
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'
wp option delete 'bp_widget_usage_initial_scan_done'
wp option delete 'better_payment_any_widget_used'

# Delete Transients
wp transient delete 'better_payment_import_transactions_success'
wp transient delete 'better_payment_import_transactions_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
