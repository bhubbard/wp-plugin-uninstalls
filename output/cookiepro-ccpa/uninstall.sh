#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookieproCCPASettings'
wp option delete 'cookieproCCPABehaviorSettings'
wp option delete 'CookieProCCPAButtonFloatings'
wp option delete 'cookieproCCPASettingsPreview'
wp option delete 'cookieproCCPABehaviorSettingsPreview'

