#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_size'
wp option delete 'ignore_columns'
wp option delete 'custom_text'
wp option delete 'custom_text_value'
wp option delete 'thumbnail_caption'
wp option delete 'thumbnail_option'
wp option delete 'image_option'
wp option delete 'scratches'
wp option delete 'show_in_pages'

