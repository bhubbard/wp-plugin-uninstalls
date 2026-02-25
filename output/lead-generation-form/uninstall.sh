#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wlgf_current_version'
wp option delete 'wlgf_last_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wlgf_saved_form_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wlgf_form_%'"
wp option delete 'we_lgf_current_version'
wp option delete 'we_lgf_last_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lgf_form_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lgf_saved_form_data_%'"
wp option delete 'wlgf_settings'
wp option delete 'wlgf_form_1'
wp option delete 'wlgf_form_2'
wp option delete 'wlgf_secretkey'

# Delete Transients
wp transient delete 'wlgf_version_check'

