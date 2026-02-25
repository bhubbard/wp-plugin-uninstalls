#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcorgcpb_alert'
wp option delete 'jcorgcpb_alert_message'
wp option delete 'jcorgcpb_use_css'
wp option delete 'jcorgcpb_disable_selection'
wp option delete 'jcorgcpb_disable_right_mouse_click'
wp option delete 'jcorgcpb_disable_keys'
wp option delete 'jcorgcpb_where_on'
wp option delete 'jcorgcpb_linkback'
wp option delete 'jcorgcpb_linkback_text'

