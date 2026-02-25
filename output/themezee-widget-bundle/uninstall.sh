#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'tzwb_settings'

# Delete Transients
wp transient delete 'tzwb_admin_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tzwb_admin_notice_%' OR option_name LIKE '_site_transient_tzwb_admin_notice_%'"

