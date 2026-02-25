#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zt_ens_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ens_%' OR option_name LIKE '_site_transient_ens_%'"

