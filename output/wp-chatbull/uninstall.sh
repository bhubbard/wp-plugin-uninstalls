#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gaxon_wpcbcp_linked'
wp option delete 'gaxon_wpcbcp_chatbox_method'
wp option delete 'gaxon_wpcbcp_chatbull_dir'
wp option delete 'gaxon_wpcbcp_widget_code'
wp option delete 'gaxon_wpcbcp_enabled_chatbox'
wp option delete 'gaxon_wpcbcp_pick_wpuser'
wp option delete 'gaxon_wpcbcp_visiblity_tpe'
wp option delete 'gaxon_wpcbcp_cbwindow_pages'

