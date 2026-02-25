#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ccfm_style_timestamp_theme'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_ccfm_style_timestamp_%'"
wp option delete 'ccfm_options'
wp option delete '_ccfm_stats'

# Delete Transients
wp transient delete 'ccfm_hosting_notice'
wp transient delete 'ccfm_hosting_notice '

