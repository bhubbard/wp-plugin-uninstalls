#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'csf_term_%'"

# Delete Transients
wp transient delete 'csf-taxonomy-transient'

