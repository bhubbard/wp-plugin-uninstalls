#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multilipi_api_key'
wp option delete 'rewrite_rules'
wp option delete 'multilipi_destination_languages'
wp option delete 'multilipi_languages'
wp option delete 'multilipi_selected_langs'
wp option delete 'multilipi_slug_map'
wp option delete 'multilipi_subdir_selected_langs'
wp option delete 'mlms_subdir_needs_sync'
wp option delete 'mlms_plugin_version'
wp option delete 'mlms_flush_rewrite_needed'
wp option delete 'mlms_notice_dismissed'

# Delete Transients
wp transient delete 'mlms_languages'

