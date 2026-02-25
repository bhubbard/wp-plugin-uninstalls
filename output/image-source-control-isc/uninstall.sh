#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'isc_options'
wp option delete 'isc_storage'
wp option delete 'isc_unused_images_total_items'
wp option delete 'isc_scanner_log'

# Delete Transients
wp transient delete 'isc-unused-attachments-stats'
wp transient delete 'isc-show-missing-sources-warning'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isc_image_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isc_image_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isc_image_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isc_image_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isc_post_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isc_post_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isc_post_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isc_post_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isc_image_source_own'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isc_image_source_own'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isc_image_source_own'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isc_image_source_own'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isc_image_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isc_image_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isc_image_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isc_image_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isc_image_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isc_image_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isc_image_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isc_image_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isc_image_licence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isc_image_licence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isc_image_licence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isc_image_licence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isc_newsletter_closed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isc_newsletter_closed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isc_newsletter_closed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isc_newsletter_closed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isc_newsletter_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isc_newsletter_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isc_newsletter_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isc_newsletter_subscribed'"
