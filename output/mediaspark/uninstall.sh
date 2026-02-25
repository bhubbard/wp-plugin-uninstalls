#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mediaspark_options'
wp option delete 'mediaspark_reviewed'
wp option delete 'mediaspark_installed'

# Delete Transients
wp transient delete 'mediaspark_bulk_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
