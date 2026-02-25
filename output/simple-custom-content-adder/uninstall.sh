#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scca_content'
wp option delete 'scca_background_color'
wp option delete 'scca_font_color'
wp option delete 'scca_font_size'
wp option delete 'scca_padding'
wp option delete 'scca_border_color'
wp option delete 'scca_border_width'
wp option delete 'scca_rounded_corners'
wp option delete 'scca_before_or_after'
wp option delete 'scca_posts_or_pages'

