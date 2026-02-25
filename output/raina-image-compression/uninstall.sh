#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rainimco_option_name'
wp option delete 'raina_image_compression_version'

# Delete Transients
wp transient delete 'raina_image_compression_activated'
wp transient delete 'raina_skip_compression_session'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rainimco_already_compressed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rainimco_already_compressed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rainimco_already_compressed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rainimco_already_compressed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
