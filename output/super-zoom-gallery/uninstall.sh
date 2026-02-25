#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'superzoomgallery_thumb'
wp option delete 'superzoomgallery_medium'
wp option delete 'superzoomgallery_full'
wp option delete 'superzoomgallery_showcaptions'
wp option delete 'superzoomgallery_captionfield'
wp option delete 'superzoomgallery_overwrite_gallery'
wp option delete 'superzoomgallery_innerzoom'
wp option delete 'superzoomgallery_usecss3'

