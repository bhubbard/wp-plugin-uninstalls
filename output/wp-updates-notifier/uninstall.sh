#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_wpun_settings'
wp option delete 'sc_wpun_settings_ver'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'sc_wpun_send_test_slack'
wp transient delete 'sc_wpun_send_test_email'

