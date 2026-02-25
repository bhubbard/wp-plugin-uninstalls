#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rp_title'
wp option delete 'rp_show_type'
wp option delete 'rp_slider_type'
wp option delete 'rp_number_related_products'
wp option delete 'rp_number_related_products_columns'
wp option delete 'rp_related_products_by'
wp option delete 'rp_slider_auto_play'
wp option delete 'rp_slider_navigation'
wp option delete 'rp_slider_navigation_position'
wp option delete 'rp_slider_pagination'
wp option delete 'rp_slider_pagination_number'
wp option delete 'rp_slider_navigation_prev_text'
wp option delete 'rp_slider_navigation_next_text'
wp option delete 'rp_slider_direction'

