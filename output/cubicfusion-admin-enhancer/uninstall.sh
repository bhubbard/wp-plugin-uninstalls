#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cubicfusion_admin_toolbar_nodes'
wp option delete 'cf_plugins_shortcodes_cache_widgets'

# Clear Cron Jobs
wp cron event delete 'cf_dashboard_widgets_daily_refresh'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_template_css_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_template_css_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_template_css_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_template_css_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf_dismiss_widget_cache_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf_dismiss_widget_cache_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf_dismiss_widget_cache_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf_dismiss_widget_cache_notice'"
