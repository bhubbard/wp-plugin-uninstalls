#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbebaic_custom_css'
wp option delete 'wbebaic_custom_js'
wp option delete 'wb_ebaic_review_transient'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbebaic_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbebaic_deactivation_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbebaic_deactivation_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbebaic_deactivation_main_reason_%'"

# Delete Transients
wp transient delete 'wb_ebaic_review_transient'

