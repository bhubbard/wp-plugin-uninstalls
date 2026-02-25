#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcsl_settings'
wp option delete 'wpcsl_us'
wp option delete 'wpcsl_cs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcsl_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

