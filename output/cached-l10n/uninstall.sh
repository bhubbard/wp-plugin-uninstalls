#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Cached_L10n.updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%.updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%.index'"

