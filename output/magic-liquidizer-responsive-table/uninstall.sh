#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liquidizer_lite_wp_table'
wp option delete 'liquidizer_lite_wp_which_table_element'
wp option delete 'liquidizer_lite_wp_table_width'
wp option delete 'liquidizer_lite_header_selector'
wp option delete 'liquidizer_lite_bodyrow_selector'

