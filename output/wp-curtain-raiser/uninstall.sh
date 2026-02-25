#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_curtain_raiser_options'
wp option delete 'wcr_active_token'

# Delete Transients
wp transient delete 'settings_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcr_reveal_token_%' OR option_name LIKE '_site_transient_wcr_reveal_token_%'"

