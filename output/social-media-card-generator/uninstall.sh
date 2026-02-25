#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socialmcg_title_font_size'
wp option delete 'socialmcg_description_font_size'
wp option delete 'socialmcg_title_y_position'
wp option delete 'socialmcg_description_y_position'
wp option delete 'socialmcg_output_format'
wp option delete 'socialmcg_jpeg_quality'
wp option delete 'socialmcg_template_image_id'

# Delete Transients
wp transient delete 'socialmcg_font_check'

