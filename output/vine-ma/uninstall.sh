#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vine-plugin-options'

# Delete Transients
wp transient delete 'vine_web_forms_cache'
wp transient delete 'vine_multiorg_status_cache'

