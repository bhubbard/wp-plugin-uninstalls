#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mysat_custom_bg_color'
wp option delete 'mysat_custom_login_bg_image'
wp option delete 'mysat_custom_login_logo'
wp option delete 'mysat_custom_login_url'
wp option delete 'mysat_custom_login_title'
wp option delete 'mysat_remove_meta_generator'
wp option delete 'mysat_disable_gutenberg'
wp option delete 'mysat_remove_wp_title'
wp option delete 'mysat_remove_category_slug'

