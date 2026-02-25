#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lwsgp_options_v06'
wp option delete 'lwsgp_last_generated_gmt'
wp option delete 'active_sitewide_plugins'
wp option delete 'lwsgp_preview_nonce'

# Delete Transients
wp transient delete 'lwsgp_flash_scan'
wp transient delete 'lwsgp_flash_preview'
wp transient delete 'lwsgp_flash_generic'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%:auto_off_note' OR option_name LIKE '_site_transient_%:auto_off_note'"

