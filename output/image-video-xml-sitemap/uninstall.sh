#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ivxs_enable_image_sitemap'
wp option delete 'ivxs_image_sitemap_filename'
wp option delete 'ivxs_enable_video_sitemap'
wp option delete 'ivxs_video_sitemap_filename'

