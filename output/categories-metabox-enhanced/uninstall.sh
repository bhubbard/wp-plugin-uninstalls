#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cme-display-activation-message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'category-metabox-enhanced_%'"

