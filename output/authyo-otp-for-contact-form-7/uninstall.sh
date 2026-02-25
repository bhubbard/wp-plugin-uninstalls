#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authyo_cf7_settings'
wp option delete 'authyo_enabled_channels'
wp option delete 'authyo_cf7_form_settings'
wp option delete 'cf7_authyo_settings'
wp option delete 'authyo_cf7_email_subscription_dismissed'
wp option delete 'authyo_cf7_email_subscription_completed'
wp option delete 'authyo_cf7_country_cache_time'
wp option delete '_transient_timeout_authyo_cf7_country_list'

# Delete Transients
wp transient delete 'authyo_cf7_show_email_subscription'
wp transient delete 'authyo_cf7_trigger_tracking'
wp transient delete 'authyo_cf7_country_list'

