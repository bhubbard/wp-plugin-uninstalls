#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_c2c_gcal_days_cache_%' OR option_name LIKE '_site_transient_c2c_gcal_days_cache_%'"

