#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard_quick_link_widget_enable'
wp option delete 'dashboard_quick_link_widget_title'
wp option delete 'dashboard_quick_link_widget_header_notice'
wp option delete 'dashboard_quick_link_widget_link_list'
wp option delete 'dashboard_quick_link_widget_open_link'
wp option delete 'dashboard_quick_link_widget_footer_notice'
wp option delete 'dashboard_quick_link_widget_mbox_bcolor'
wp option delete 'dashboard_quick_link_widget_mbox_fcolor'

