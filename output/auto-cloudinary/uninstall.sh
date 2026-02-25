#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloudinary_cloud_name'
wp option delete 'cloudinary_auto_mapping_folder'
wp option delete 'cloudinary_default_hard_crop'
wp option delete 'cloudinary_default_soft_crop'
wp option delete 'cloudinary_urls'
wp option delete 'cloudinary_content_images'

