#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ca_logo_file'
wp option delete 'ca_logo_url'
wp option delete 'ca_login_background_color'
wp option delete 'ca_custom_css'
wp option delete 'ca_remove_meta_generator'
wp option delete 'ca_remove_meta_rsd'
wp option delete 'ca_remove_meta_wlw'
wp option delete 'ca_remove_rss_links'
wp option delete 'ca_remove_dashboard_site_health_status'
wp option delete 'ca_remove_dashboard_at_a_glance'
wp option delete 'ca_remove_dashboard_activity'
wp option delete 'ca_remove_dashboard_quick_press'
wp option delete 'ca_remove_dashboard_wordpress_news'
wp option delete 'ca_remove_dashboard_plugins'
wp option delete 'ca_remove_dashboard_wordpress_other'

