#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'otw_lc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dnms'"

# Delete Transients
wp transient delete 'otw_upd_plug'
wp transient delete 'update_plugins'

