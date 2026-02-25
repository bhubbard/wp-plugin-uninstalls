#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ajc_async_js'
wp option delete 'ajc_async_css'
wp option delete 'ajc_detect_scripts_in_wp_head'
wp option delete 'ajc_detect_scripts_in_wp_foot'
wp option delete 'ajc_css_loading_method'
wp option delete 'ajc_css_minify'
wp option delete 'ajc_remove_GET_part'
wp option delete 'ajc_exceptions'

