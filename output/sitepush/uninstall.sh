#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sitepush_options'

# Delete Transients
wp transient delete 'sitepush_force_show_wp_errors'

