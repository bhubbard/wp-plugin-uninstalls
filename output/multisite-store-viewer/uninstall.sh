#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selected_attribute'
wp option delete 'custom_image_size_width'
wp option delete 'custom_image_size_height'
wp option delete 'default_image'
wp option delete 'ced_only_logo'
wp option delete 'ced_multi_enable_search'
wp option delete 'ced_multi_exclude_site'
wp option delete 'site_list_order'
wp option delete 'hidesite'

