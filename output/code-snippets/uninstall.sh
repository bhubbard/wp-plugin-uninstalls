#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_shared_network_snippets'
wp option delete 'recently_activated_snippets'
wp option delete 'shared_network_snippets'
wp option delete 'menu_items'
wp option delete 'code_snippets_version'
wp option delete 'code_snippets_cloud_settings'
wp option delete 'code_snippets_settings'

# Delete Transients
wp transient delete 'settings_errors'
wp transient delete 'cs_codevault_snippets'
wp transient delete 'cs_local_to_cloud_map'

