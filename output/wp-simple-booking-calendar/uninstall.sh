#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsbc_settings'
wp option delete 'wpsbc_version'
wp option delete 'wpsbc_first_activation'
wp option delete 'wpsbc_upgrade_8_0_0'
wp option delete 'wpsbc_upgrade_8_0_0_skipped'
wp option delete 'wpsbc_serial_key'
wp option delete 'wpsbc_registered_website_id'
wp option delete 'wp-simple-booking-calendar-options'
wp option delete 'wpsbc_db_version'

# Delete Transients
wp transient delete 'wpsbc_serial_status'

