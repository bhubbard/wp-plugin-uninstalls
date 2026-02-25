#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sform_settings'
wp option delete 'wordpress_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'sform_aks_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sform_%'"

# Delete Transients
wp transient delete 'sform_version_alert'

