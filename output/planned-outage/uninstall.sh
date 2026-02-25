#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pobt_enabled'
wp option delete 'pobt_enabled_at'
wp option delete 'pobt_bypass_key'
wp option delete 'pobt_retry_after'
wp option delete 'pobt_allow_bots'
wp option delete 'pobt_bypass_enabled'
wp option delete 'surge_installed'

