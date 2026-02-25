#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctsc_option_hotkey'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ctsc_presets_%'"

