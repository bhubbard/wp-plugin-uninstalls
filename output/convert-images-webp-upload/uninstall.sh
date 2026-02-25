#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ciwup_options'

# Delete Transients
wp transient delete 'ciwup_settings_saved_notice'

