#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_cf7_authentication_token_%'"
wp option delete 'click5_cf7_addon_const_values'
wp option delete 'click5_cf7_addon_notifications'
wp option delete 'click5_cf7_addon_notifications_count_errors'
wp option delete 'posting_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'form_enable_%'"
wp option delete 'click5_cf7_addon_posting_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_cf7_addon_form_enable_%'"
wp option delete 'click5_cf7_addon_crm_fields_stored'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
