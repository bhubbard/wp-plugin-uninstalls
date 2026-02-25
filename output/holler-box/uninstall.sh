#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hollerbox_settings'
wp option delete 'hwp_ac_api_key'
wp option delete 'hwp_ac_url'
wp option delete 'hwp_ck_api_key'
wp option delete 'hwp_mc_api_key'
wp option delete 'hwp_email_title'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_table_version'"
wp option delete 'hwp_pro_edd_license'
wp option delete 'hwp_pro_edd_license_status'
wp option delete 'hwp_powered_by'
wp option delete 'holler_previous_updates'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'hollerbox/telemetry'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hollerbox_closed_popups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hollerbox_closed_popups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hollerbox_closed_popups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hollerbox_closed_popups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hollerbox_popup_conversions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hollerbox_popup_conversions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hollerbox_popup_conversions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hollerbox_popup_conversions'"
