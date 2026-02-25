#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-license'"
wp option delete '_site_transient_update_plugins'
wp option delete 'PMP_lic_email'
wp option delete '_site_transient_update_themes'
wp option delete 'wppb_demo_input_examples'
wp option delete 'pet-match-pro-color-options'
wp option delete 'pet-match-pro-general-options'

# Delete Transients
wp transient delete 'update_themes'

