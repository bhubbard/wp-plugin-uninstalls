#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'permate_setting_enable'
wp option delete 'permate_setting_gtm'
wp option delete 'permate_setting_commission'
wp option delete 'permate_setting_multiple_events'
wp option delete 'permate_setting_conversion_tracking'
wp option delete 'permate_setting_conversion_endpoint'
wp option delete 'permate_setting_conversion_post_type'
wp option delete 'permate_setting_manual_approve'
wp option delete 'permate_setting_api_key'
wp option delete 'permate_setting_adv_id'
wp option delete 'permate_setting_offer_id'
wp option delete 'permate_setting_approved_conversion'
wp option delete 'permate_setting_reject_conversion'
wp option delete 'permate_setting_list_endpoint'
wp option delete 'permate_setting_url_cdn'
wp option delete 'permate_setting_url_tracking'
wp option delete 'permate_setting_url_api'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_permate_ci'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_permate_ci'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_permate_ci'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_permate_ci'"
