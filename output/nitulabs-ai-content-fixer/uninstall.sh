#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aicf_consent_given'
wp option delete 'aicf_rest_api_key'
wp option delete 'aicf_db_version'

# Delete Transients
wp transient delete 'aicf_usage_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
