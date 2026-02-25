#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'dci_plugin_last_processed_id'
wp option delete 'dci_query_templates'
wp option delete 'dci_themes_last_processed_id'
wp option delete 'dci_system_settings'
wp option delete 'dci_insights_installed'
wp option delete 'dci_insights_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"
wp transient delete 'dci_feedback_data'
wp transient delete 'dci_product_feedback_data'
wp transient delete 'dci_error_message'

