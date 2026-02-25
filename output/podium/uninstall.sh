#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'podium_settings'
wp option delete 'podium-installation'
wp option delete 'podium-feature-flag'
wp option delete 'podium-script-code'

