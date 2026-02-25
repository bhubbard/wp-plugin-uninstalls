#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'confection_enable_community'
wp option delete 'confection_enable_woocommerce'
wp option delete 'confection_version'
wp option delete 'confection_ajax_name'
wp option delete 'confection_write_key'
wp option delete 'confection_account_id'
wp option delete 'confection_writed_key'
wp option delete 'confection_wp_ajax'
wp option delete 'confection_disable_analytics'
wp option delete 'confection_custom_cable_url'
wp option delete 'confection_inline_script'
wp option delete 'confection_additional_code'
wp option delete 'confection_privacy'
wp option delete 'confection_banner'
wp option delete 'confection_show_footer'

# Clear Cron Jobs
wp cron event delete 'confection_name_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_confection_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_confection_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_confection_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_confection_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_confection_uuid_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_confection_uuid_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_confection_uuid_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_confection_uuid_sent'"
