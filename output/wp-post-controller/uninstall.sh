#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wppc_reset_notice_box'
wp option delete 'wppc_database_setup_done'
wp option delete 'wppc_setting'

