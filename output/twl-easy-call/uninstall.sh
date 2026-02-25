#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tw_setting_twilio_account_sid'
wp option delete 'tw_setting_twilio_auth_token'
wp option delete 'tw_setting_twilio_number'

