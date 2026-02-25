#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wprs_post_type'
wp option delete 'wprs_post_title'
wp option delete 'wprs_post_featured_iamge_size'
wp option delete 'wprs_image_number'

