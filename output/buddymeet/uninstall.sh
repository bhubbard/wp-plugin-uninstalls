#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddymeet_jitsi_appid'
wp option delete 'buddymeet_jitsi_apikeyid'
wp option delete 'buddymeet_jitsi_privatekey'
wp option delete 'buddymeet_jitsi_domain'
wp option delete 'active_sitewide_plugins'
wp option delete '_buddymeet_enabled'
wp option delete '_buddymeet_version'

