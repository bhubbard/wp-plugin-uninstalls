#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awsom_pixgallery_all_images_text'
wp option delete 'PixGallery'
wp option delete 'awsom_pixgallery_cache_created'
wp option delete 'awsom_pixgallery_default_gallery'
wp option delete 'awsom_pixgallery_defaultgallery_created'
wp option delete 'awsom_pixgallery_db_version'

