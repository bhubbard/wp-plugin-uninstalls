#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brkhi_merchantid_input'
wp option delete 'brkhi_apisecret_input'
wp option delete 'brkhi_activity_logs'

