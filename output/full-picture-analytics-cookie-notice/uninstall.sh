#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fupi_versions'
wp option delete 'fupi_tools'
wp option delete 'fupi_reports'
wp option delete 'fupi_main'
wp option delete 'fupi_proofrec'
wp option delete 'fupi_cook'
wp option delete 'fupi_pla'
wp option delete 'fupi_atrig'
wp option delete 'fupi_track'
wp option delete 'fupi_cscr'
wp option delete 'fupi_reactions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fupi_%'"
wp option delete 'fupi_cegg'
wp option delete 'fupi_clar'
wp option delete 'fupi_cookie_notice'
wp option delete 'fupi_fbp1'
wp option delete 'fupi_ga41'
wp option delete 'fupi_gads'
wp option delete 'fupi_gtag'
wp option delete 'fupi_gtm'
wp option delete 'fupi_hotj'
wp option delete 'fupi_insp'
wp option delete 'fupi_linkd'
wp option delete 'fupi_mads'
wp option delete 'fupi_mato'
wp option delete 'fupi_pin'
wp option delete 'fupi_posthog'
wp option delete 'fupi_simpl'
wp option delete 'fupi_tik'
wp option delete 'fupi_twit'
wp option delete 'fupi_woo'
wp option delete 'woocommerce_feature_order_attribution_enabled'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'fupi_activation_redirect'
wp option delete 'fupi_ga42'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fupi_consents_backup_cron_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fupi_adv_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fupi_adv_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fupi_adv_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fupi_adv_mode'"
