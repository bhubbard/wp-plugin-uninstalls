#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abd_dwm_user_roles'
wp option delete 'abd_dwm_show_widgets'
wp option delete 'abd_dwm_widget_content'
wp option delete 'abd_dwm_widget_title'
wp option delete 'abd_dwm_avail_dashboard_widgets'

