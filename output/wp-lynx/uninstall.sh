#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options_bk'"
wp option delete 'llynx_options'

