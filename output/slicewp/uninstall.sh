#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slicewp_remote_add_ons'
wp option delete 'slicewp_helpscout_beacon_welcome'
wp option delete 'slicewp_website_registered'
wp option delete 'slicewp_setup_wizard_visited'
wp option delete 'slicewp_dismissed_admin_notices'
wp option delete 'slicewp_review_request'
wp option delete 'slicewp_flush_rewrite_rules'
wp option delete 'slicewp_license_key'
wp option delete 'slicewp_setup_wizard_hidden'
wp option delete 'slicewp_setup_wizard_current_step'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'slicewp_license_key_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'slicewp_%'"
wp option delete 'slicewp_first_activation'
wp option delete 'slicewp_migrations'
wp option delete 'slicewp_version'
wp option delete 'slicewp_settings'

# Delete Transients
wp transient delete '_slicewp_activated'

# Clear Cron Jobs
wp cron event delete 'slicewp_plugin_usage_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slicewp_user_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slicewp_user_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slicewp_user_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slicewp_user_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sl_is_renewal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slicewp_disable_commissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slicewp_disable_commissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slicewp_disable_commissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slicewp_disable_commissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slicewp-disable-commissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slicewp-disable-commissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slicewp-disable-commissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slicewp-disable-commissions'"
