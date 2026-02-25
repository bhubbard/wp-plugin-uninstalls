#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%rating_asked'"

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'gops_error'
wp transient delete 'gops_notice'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'go_f4g_view_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'go_f4g_view_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'go_f4g_view_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'go_f4g_view_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gravityview_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gravityview_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gravityview_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gravityview_form_id'"
