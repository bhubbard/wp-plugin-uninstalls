#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shortcoder_last_changelog'
wp option delete 'sc_settings'
wp option delete 'shortcoder_version'
wp option delete 'shortcoder_data'
wp option delete 'shortcoder_flags'

# Delete Transients
wp transient delete 'sc_upgrade'

