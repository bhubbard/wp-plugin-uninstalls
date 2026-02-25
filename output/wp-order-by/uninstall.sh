#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpob-options-%'"
wp option delete 'wpob-exclude-posts'
wp option delete 'wpob-options-'

