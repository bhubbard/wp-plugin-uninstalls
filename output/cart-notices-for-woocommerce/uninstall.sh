#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'berocket_key_activated_plugins'
wp option delete 'berocket_framework_option_global'
wp option delete 'BeRocket_Framework_plugins_version_check'
wp option delete 'berocket_admin_notices'
wp option delete 'berocket_email_subscribed'
wp option delete 'berocket_last_close_notices_time'
wp option delete 'berocket_current_displayed_notice'
wp option delete 'berocket_admin_notices_last_on_options'
wp option delete 'berocket_admin_notices_rate_stars'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'berocket_plugin_error_%'"
wp option delete 'berocket_information_notices'
wp option delete 'BeRocket_account_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_upgrade'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'brfr_last_plugin_version_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_berocket_framework_plugin_is_active_%' OR option_name LIKE '_site_transient_berocket_framework_plugin_is_active_%'"
wp transient delete 'berocket_plugin_paid_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_paid_info' OR option_name LIKE '_site_transient_%_paid_info'"
wp transient delete 'update_plugins'
wp transient delete 'br_plugin_activation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_br_plugin_api_%' OR option_name LIKE '_site_transient_br_plugin_api_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brplugin_info_%' OR option_name LIKE '_site_transient_brplugin_info_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'berocket_post_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'berocket_post_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'berocket_post_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'berocket_post_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'br_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'br_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'br_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'br_notice'"
