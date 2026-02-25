#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'screenly_cast_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'screenly_cast_%'"
wp option delete 'screenly_previous_theme'
wp option delete 'screenly_cast_cache_duration'
wp option delete 'screenly_cast_logo'
wp option delete 'screenly_options_logo'

