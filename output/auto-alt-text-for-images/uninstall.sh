#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'forvoyez_plugin_activated'
wp option delete 'forvoyez_plugin_version'
wp option delete 'forvoyez_flush_rewrite_rules'
wp option delete 'forvoyez_auto_analyze_enabled'
wp option delete 'forvoyez_encrypted_api_key'
wp option delete 'forvoyez_context'
wp option delete 'forvoyez_language'

# Delete Transients
wp transient delete 'forvoyez_bulk_analyze_images'
wp transient delete 'forvoyez_api_check'

# Clear Cron Jobs
wp cron event delete 'forvoyez_analyze_single_image'
wp cron event delete 'forvoyez_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_forvoyez_analyzed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_forvoyez_analyzed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_forvoyez_analyzed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_forvoyez_analyzed'"
