#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licence_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_key_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_errors'"

# Delete Transients
wp transient delete 'update_plugins'

