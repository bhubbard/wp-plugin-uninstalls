#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'image_cdn'
wp option delete 'image_cdn_notices'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_image_cdn_analytics_%' OR option_name LIKE '_site_transient_image_cdn_analytics_%'"

