#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_auto_columns_split_style'
wp option delete 'wp_auto_columns_line_height'
wp option delete 'wp_auto_columns_tags_headers'
wp option delete 'wp_auto_columns_tags_splittable'
wp option delete 'wp_auto_columns_height_modifiers'

