#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'powerwaf_settings'
wp option delete 'powerwafcdn_last_update_time'
wp option delete 'powerwafcdn_last_update_url'

