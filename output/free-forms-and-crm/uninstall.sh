#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbs_options'
wp option delete '_transient_timeout_wbs_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'free_forms_crm_%'"

# Delete Transients
wp transient delete 'wbs_app_token'
wp transient delete 'wbs_token'

