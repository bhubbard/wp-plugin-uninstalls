#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_readmore_link_pages'
wp option delete 'hide_all_readmore_links'
wp option delete 'use_single_images_folder'
wp option delete 'use_compressed_images'
wp option delete 'load_plugin_styles'

