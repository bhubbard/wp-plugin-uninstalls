#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'macsms_google_access_token'
wp option delete 'macsms_twilio_phone_number'
wp option delete 'macsms_plivo_phone'
wp option delete 'macsms_sinch_phone'
wp option delete 'macsms_telnyx_phone'
wp option delete 'macsms_bandwidth_account_id'
wp option delete 'macsms_bandwidth_phone'
wp option delete 'macsms_bandwidth_app_id'
wp option delete 'macsms_settings'

# Clear Cron Jobs
wp cron event delete 'macsms_sync_calendar_cron'

