#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ubermediasettings_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'mmp_version'

# Delete Transients
wp transient delete '_mmp_activation_redirect'

