#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bg_css'
wp option delete 'bg_at'
wp option delete 'color_css'
wp option delete 'menu_pattern'
wp option delete 'cawaii_header_logo'
wp option delete 'cawaii_login_logo'
wp option delete 'cawaii_dshbrd_metaboxes'
wp option delete 'cawaii_post_metaboxes'
wp option delete 'force_default_login_logo'
wp option delete 'force_default_header_logo'

