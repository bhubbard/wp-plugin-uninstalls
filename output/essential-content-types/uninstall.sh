#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ect_portfolio'
wp option delete 'ect_testimonial'
wp option delete 'ect_featured_content'
wp option delete 'ect_service'
wp option delete 'ect_food_menu'
wp option delete 'featured_content_content'
wp option delete 'ect_food_menu_order'
wp option delete 'jetpack_portfolio_content'
wp option delete 'ect_service_content'
wp option delete 'jetpack_testimonial_content'
wp option delete 'ctp_options'

# Delete Transients
wp transient delete 'featured-content-count-cache'
wp transient delete 'jetpack-portfolio-count-cache'
wp transient delete 'service-count-cache'
wp transient delete 'jetpack-testimonial-count-cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ect_food_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ect_food_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ect_food_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ect_food_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ect_testimonial_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ect_testimonial_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ect_testimonial_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ect_testimonial_position'"
