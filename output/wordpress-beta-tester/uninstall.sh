#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_beta_tester'
wp option delete 'wp_beta_tester_core'
wp option delete 'wp_beta_tester_extras'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'current_wp_release'

