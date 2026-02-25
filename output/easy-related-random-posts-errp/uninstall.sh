#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'errp_license_server_url'
wp option delete 'errp_settings'
wp option delete 'errp_performance_data'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_errp_license_cache_%' OR option_name LIKE '_site_transient_errp_license_cache_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_errp_license_status_%' OR option_name LIKE '_site_transient_errp_license_status_%'"
wp transient delete 'errp_current_pricing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_errp_post_analysis_%' OR option_name LIKE '_site_transient_errp_post_analysis_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
