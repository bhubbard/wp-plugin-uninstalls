#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smswp_option'

# Delete Transients
wp transient delete 'smswp_bitly_group_guid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smswp_sms_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smswp_sms_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smswp_sms_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smswp_sms_number'"
