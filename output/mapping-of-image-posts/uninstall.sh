#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'MOIP_MAX_ATTACHMENTS_PER_SCAN'
wp option delete 'moip_image_type'
wp option delete 'moip_out_file_type'

# Delete Transients
wp transient delete 'mapping_of_image_posts_filename'
wp transient delete 'lines_affected'

