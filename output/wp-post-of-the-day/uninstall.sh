#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_expiration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_used_ids'"

