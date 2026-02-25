#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpt_effect'
wp option delete 'wpt_speed'
wp option delete 'wpt_sortby'
wp option delete 'wpt_orderby'
wp option delete 'wpt_content_limit'
wp option delete 'wpt_viewall'
wp option delete 'wpt_viewall_page'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_testimonial_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_testimonial_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_testimonial_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_testimonial_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_testimonial_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_testimonial_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_testimonial_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_testimonial_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_testimonial_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_testimonial_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_testimonial_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_testimonial_url'"
