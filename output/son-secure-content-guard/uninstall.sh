#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'son_cp_enable_copy_protection'
wp option delete 'son_cp_enable_right_click_protection'
wp option delete 'son_cp_copy_message'
wp option delete 'son_cp_right_click_message'
wp option delete 'son_cp_admin_message'

