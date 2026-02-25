#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'code_core_tracking_optin'
wp option delete 'code_core_plugin_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_code_and_core_remove_empty_p_tags_notice_%' OR option_name LIKE '_site_transient_code_and_core_remove_empty_p_tags_notice_%'"

