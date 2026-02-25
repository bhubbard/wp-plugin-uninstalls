#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecookies_hostriver_google_tag_manager_id'
wp option delete 'ecookies_hostriver_selected_layout'
wp option delete 'ecookies_hostriver_modalPosition'
wp option delete 'ecookies_hostriver_disable_page_interaction'
wp option delete 'ecookies_hostriver_flip_buttons'
wp option delete 'ecookies_hostriver_weight_buttons'
wp option delete 'ecookies_hostriver_theme_color'

