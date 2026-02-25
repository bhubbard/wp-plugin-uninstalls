#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsu_total_bytes'
wp option delete 'selection_css'
wp option delete 'wpsu_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp option delete 'selection_js'
wp option delete 'wpsu_compress_images'

