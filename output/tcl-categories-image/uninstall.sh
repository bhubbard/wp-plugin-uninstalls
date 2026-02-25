#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tclci_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"

