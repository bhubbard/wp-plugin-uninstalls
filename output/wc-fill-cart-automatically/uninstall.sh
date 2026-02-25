#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fwc_settings'
wp option delete 'fwc_settings_statistics'
wp option delete 'fwc_count_times'
wp option delete 'fwc_count_users'

