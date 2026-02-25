#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'medium_crop'
wp option delete 'large_crop'
wp option delete 'picturefill_wp_version'
wp option delete 'picturefill_wp_update_timestamp'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_picturefill_wp_output_%' OR option_name LIKE '_site_transient_picturefill_wp_output_%'"

