#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twt_setting_countries'
wp option delete 'twt_setting_number'
wp option delete 'twt_setting_welcome'
wp option delete 'twt_setting_account_sid'
wp option delete 'twt_setting_auth_token'

