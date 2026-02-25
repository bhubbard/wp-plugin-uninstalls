#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'drip_time'
wp option delete 'drip_level'
wp option delete 'image_size_full'
wp option delete 'image_size_large'
wp option delete 'image_size_medium'
wp option delete 'restrict_image_size_full'
wp option delete 'restrict_image_size_large'
wp option delete 'restrict_image_size_medium'
wp option delete 'drip_end_option'
wp option delete 'drip_end'
wp option delete 'drip_end_image_option'

