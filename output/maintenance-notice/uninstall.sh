#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maintenance_notice_options'
wp option delete 'maintenance_notice_activated_time'

# Delete Transients
wp transient delete 'maintenance-notice-admin-notice'

