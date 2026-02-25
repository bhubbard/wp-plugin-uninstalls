#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'global_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_global_styles_%' OR option_name LIKE '_site_transient_global_styles_%'"
wp transient delete 'gutenberg_global_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gutenberg_global_styles_%' OR option_name LIKE '_site_transient_gutenberg_global_styles_%'"

