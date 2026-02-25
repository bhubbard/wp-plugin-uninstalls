#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp option delete 'classic-editor-allow-users'
wp option delete 'sidebars_widgets'
wp option delete 'sf_queue_flush_rewrite_rules'
wp option delete 'sf_exclude_rules'
wp option delete 'sf_app_api_key'

# Delete Transients
wp transient delete 'stalkfish_last_error'
wp transient delete 'stalkfish_connect_timeout'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
