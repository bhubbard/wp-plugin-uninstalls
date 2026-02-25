#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mb_spirit_options'

# Delete Transients
wp transient delete 'MB_SPIRIT_SETTINGS_INFO'

