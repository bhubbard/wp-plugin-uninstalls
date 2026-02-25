#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprhinosupport_key'
wp option delete 'rhino_license_status'
wp option delete 'rhino_last_license_check'
wp option delete 'wprhinosupport_non_logged_departments'
wp option delete 'wprhinosupport_logged_departments'
wp option delete 'wprhinosupport_wlm_members_departments'
wp option delete 'wprhinosupport_create_thankyou'
wp option delete 'wprhinosupport_create_thankyou_value1'
wp option delete 'wprhinosupport_external_internal'
wp option delete 'wprhinosupport_create_thankyou_value2'
wp option delete 'wprhinosupport_scroller_color'
wp option delete 'wprhinosupport_scroller_pixel'
wp option delete 'wprhinosupport_scroller_online'
wp option delete 'wprhinosupport_scroller_offline'
wp option delete 'wprhinosupport_scroller_tab'
wp option delete 'wprhinosupport_supporttab_ids'
wp option delete 'wprhinosupport_remote_auth'
wp option delete 'wprhinosupport_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rhino-ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rhino-ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rhino-ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rhino-ticket'"
