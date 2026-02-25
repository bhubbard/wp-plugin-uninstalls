#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_testimonials_builder_html_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_testimonials_builder_html_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_testimonials_builder_html_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_testimonials_builder_html_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_testimonial_slider_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_testimonial_slider_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_testimonial_slider_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_testimonial_slider_config'"
