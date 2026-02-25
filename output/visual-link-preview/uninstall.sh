#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vlp_templates'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vlp_template_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'vlp_activated'

