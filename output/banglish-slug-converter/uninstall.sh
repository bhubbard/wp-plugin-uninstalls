#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbsc_custom_mappings'
wp option delete 'sbsc_settings'

# Delete Transients
wp transient delete 'sbsc_activation_notice'

