#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'perfecty_push'
wp option delete 'perfecty_push_activated'
wp option delete 'perfecty_push_version'
wp option delete 'perfecty_push_db_version'

# Delete Transients
wp transient delete 'perfecty_push_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_perfecty_push_send_on_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_perfecty_push_send_on_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_perfecty_push_send_on_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_perfecty_push_send_on_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_perfecty_push_notification_custom_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_perfecty_push_notification_custom_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_perfecty_push_notification_custom_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_perfecty_push_notification_custom_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_perfecty_push_notification_custom_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_perfecty_push_notification_custom_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_perfecty_push_notification_custom_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_perfecty_push_notification_custom_body'"
