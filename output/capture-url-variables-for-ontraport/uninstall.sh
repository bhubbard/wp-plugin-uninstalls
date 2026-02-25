#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oap_utm_plugin_link_support_link'
wp option delete 'oap_utm_plugin_link_license_link'
wp option delete 'oap_utm_custom_extra_fields'
wp option delete 'oap_utm_plugin_authenticated'
wp option delete 'oap_utm_license_key'
wp option delete 'oap-utm_message'
wp option delete 'itmooti-utm_message'
wp option delete 'oap_utm_api_version'
wp option delete 'oap_utm_app_id'
wp option delete 'oap_utm_api_key'
wp option delete 'oap_utm_extra_fields'
wp option delete 'oap_utm_fields'
wp option delete 'oap_utm_form_ids'
wp option delete 'oap_utm_user_forms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'utm_fields_custom_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'oap_utm_form_id_%'"

# Clear Cron Jobs
wp cron event delete 'plugin_scheduled_event'

