#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard_widget_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dash_%' OR option_name LIKE '_site_transient_dash_%'"

