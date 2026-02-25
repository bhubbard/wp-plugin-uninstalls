#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp option delete 'custom-typekit-fonts'
wp option delete 'allowed_astra_notices'

# Delete Transients
wp transient delete 'bsf_analytics_track'

