#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nowpost_pudo_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nowpost_processing_%' OR option_name LIKE '_site_transient_nowpost_processing_%'"

