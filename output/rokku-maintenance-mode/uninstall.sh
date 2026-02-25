#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rokkmamo_enabled'
wp option delete 'rokkmamo_logo_id'
wp option delete 'rokkmamo_headline'
wp option delete 'rokkmamo_message'

# Delete Transients
wp transient delete 'rokkmamo_status'
wp transient delete 'rokkmamo_last_toggle'

