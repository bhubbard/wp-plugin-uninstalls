#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bip_updated'
wp option delete 'bip_terms'
wp option delete 'bip_post_type'
wp option delete 'bip_image_title'
wp option delete 'bip_post_status'
wp option delete 'bip_taxonomy'
wp option delete 'bip_image_content'
wp option delete 'bip_image_content_size'

