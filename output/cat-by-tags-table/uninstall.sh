#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'display_cats_by_tag_direction'
wp option delete 'display_cats_by_tag_table_title'
wp option delete 'display_cats_by_tag_stylesheet'
wp option delete 'display_cats_by_tag_replace_text'
wp option delete 'display_cats_by_tag_empty_cell'

