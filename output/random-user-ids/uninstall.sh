#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dfx_randomuserid_activation_show_activation_notice'
wp option delete 'dfx_randomuserid_first_user_moved_to'

