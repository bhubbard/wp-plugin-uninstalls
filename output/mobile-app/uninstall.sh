#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'canvas_editor_css'
wp option delete 'canvas-generated-existing-login-html-template-complete'
wp option delete 'canvas-generated-existing-registration-html-template-complete'
wp option delete 'canvas-generated-existing-css-template-complete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'canvas-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'ml_pnt-push_tags_status'

# Delete Transients
wp transient delete '__canvas_activation_redirect'
wp transient delete 'canvas_push_api_down'

# Clear Cron Jobs
wp cron event delete 'canvas_send_delayed_push_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_tag'"
