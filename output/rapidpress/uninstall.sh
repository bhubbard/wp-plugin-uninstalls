#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rapidpress_options'
wp option delete 'rapidpress_version'

# Delete Transients
wp transient delete 'rapidpress_activation_notice'

