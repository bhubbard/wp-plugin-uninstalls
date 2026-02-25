#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbvcbaic_custom_css'
wp option delete 'wbvcbaic_custom_js'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vcbaic_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vcbaic_deactivation_details_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vcbaic_deactivation_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vcbaic_deactivation_main_reason_%'"

# Delete Transients
wp transient delete 'wb_vc_baic_review_transient'

