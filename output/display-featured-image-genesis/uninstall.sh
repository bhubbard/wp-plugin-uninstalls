#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'displayfeaturedimagegenesis'
wp option delete 'sendimagesrss'
wp option delete 'sendimagesrss_simplify_feed'
wp option delete 'sendimagesrss_alternate_feed'
wp option delete 'displayfeaturedimagegenesis_updatedterms'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_displayfeaturedimagegenesis_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_displayfeaturedimagegenesis_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_displayfeaturedimagegenesis_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_displayfeaturedimagegenesis_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'displayfeaturedimagegenesis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'displayfeaturedimagegenesis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'displayfeaturedimagegenesis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'displayfeaturedimagegenesis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
