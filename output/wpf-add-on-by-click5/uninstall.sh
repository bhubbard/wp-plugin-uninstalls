#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_wpf_authentication_token_%'"
wp option delete 'click5_wpf_addon_const_values'
wp option delete 'click5_wpf_addon_notifications'
wp option delete 'click5_wpf_addon_notifications_count_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'click5_wpf_addon_form_enable_%'"
wp option delete 'click5_wpf_addon_crm_fields_stored'
wp option delete 'posting_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'form_enable_%'"
wp option delete 'click5_wpf_addon_posting_url'

