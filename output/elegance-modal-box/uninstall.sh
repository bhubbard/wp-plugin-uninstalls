#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'em_%'"
wp option delete 'em_content_image'
wp option delete 'em_image_url'
wp option delete 'em_source_code'
wp option delete 'em_active'
wp option delete 'em_sitewide'

