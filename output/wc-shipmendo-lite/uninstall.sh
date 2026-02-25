#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_cargo_tracking_default_cargo_company'
wp option delete '_cargo_tracking_email_enabled'
wp option delete '_cargo_tracking_sms_message'
wp option delete '_cargo_tracking_sms_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cargo_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cargo_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cargo_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cargo_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cargo_company_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cargo_company_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cargo_company_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cargo_company_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
