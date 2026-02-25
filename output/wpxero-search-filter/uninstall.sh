#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpxero_search_settings'
wp option delete 'wpxero_search_keep_data_on_uninstall'
wp option delete 'wpxero_search_last_uninstall'
wp option delete 'wpxero_search_version'
wp option delete 'wpxero_search_activation_date'
wp option delete 'wpxero_search_last_deactivation'
wp option delete 'wpxero_search_deactivation_feedback'

# Delete Transients
wp transient delete 'wpxero_search_builder_cache'

