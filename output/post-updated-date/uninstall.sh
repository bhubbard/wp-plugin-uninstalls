#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awd_modified_date_color'
wp option delete 'awd_modified_date_font_size'
wp option delete 'awd_modified_date_font_weight'
wp option delete 'awd_modified_date_font_style'
wp option delete 'awd_modified_date_prefix_type'
wp option delete 'awd_modified_date_custom_prefix'
wp option delete 'awd_modified_date_position'

