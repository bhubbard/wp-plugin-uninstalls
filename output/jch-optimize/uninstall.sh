#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jch-optimize_settings'
wp option delete 'jch_options'

# Delete Transients
wp transient delete 'jch-optimize_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jch_optimize_state_%' OR option_name LIKE '_site_transient_jch_optimize_state_%'"

