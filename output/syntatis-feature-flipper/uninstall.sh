#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_attachment_pages_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_stash'"

