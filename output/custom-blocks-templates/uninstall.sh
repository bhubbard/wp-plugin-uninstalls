#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cbt_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cbt_editable_%'"

# Delete Transients
wp transient delete 'cbt_registered_stylesheets'

