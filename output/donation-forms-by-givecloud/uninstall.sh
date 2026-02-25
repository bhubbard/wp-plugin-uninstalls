#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'givecloud_settings_fields'

# Delete Transients
wp transient delete 'givecloud_api_is_connected'
wp transient delete 'givecloud_fundraising_forms'

