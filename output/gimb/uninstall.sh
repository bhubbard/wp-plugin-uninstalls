#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gimb_google_key_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gimb_restrict_%'"

