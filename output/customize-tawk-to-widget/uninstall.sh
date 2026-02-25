#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tawktocustomise_custom_time%'"
wp option delete 'tawktocustomise_settings'

