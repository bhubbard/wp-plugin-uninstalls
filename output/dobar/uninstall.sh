#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dobar.%'"

# Delete Transients
wp transient delete 'dobar_activation_redirect'

