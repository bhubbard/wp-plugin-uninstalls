#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'external_links_in_new_windows_force'
wp option delete 'external_links_in_new_windows_ignore'

