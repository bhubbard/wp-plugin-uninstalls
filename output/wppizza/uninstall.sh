#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bestsellers'"
wp option delete 'posts_per_page '
wp option delete '_site_transient_update_plugins'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'site_url'
wp option delete 'widget_wppizza_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_templates_print'"

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'wppizza_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cemail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cemail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cemail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cemail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
