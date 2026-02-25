#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'civic_cookiecontrol_settings'
wp option delete 'civic_cookiecontrol_apikey_version'
wp option delete 'civic_cookie_control_version'
wp option delete 'civic_cookiecontrol_settings_v9'
wp option delete 'cookiecontrol_settings'
wp option delete 'civic_cookiecontrol_productval'

