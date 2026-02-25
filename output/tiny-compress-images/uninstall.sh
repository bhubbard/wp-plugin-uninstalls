#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tinypng_logging_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'tantan_wordpress_s3'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tiny_rpc_%' OR option_name LIKE '_site_transient_tiny_rpc_%'"

