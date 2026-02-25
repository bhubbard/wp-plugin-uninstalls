#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'live_font_preview_enable_all'
wp option delete 'live_font_preview_products'
wp option delete 'live_font_preview_categories'
wp option delete 'live_font_preview_fonts'
wp option delete 'live_font_preview_title'
wp option delete 'live_font_preview_text_label'
wp option delete 'live_font_preview_font_label'
wp option delete 'live_font_preview_preview_label'
wp option delete 'live_font_preview_text_placeholder'
wp option delete 'live_font_preview_preview_text'
wp option delete 'live_font_preview_max_text_length'
wp option delete 'live_font_preview_cart_text_label'
wp option delete 'live_font_preview_cart_font_label'
wp option delete 'live_font_preview_order_text_label'
wp option delete 'live_font_preview_order_font_label'
wp option delete 'live_font_preview_error_text'
wp option delete 'live_font_preview_error_font'

