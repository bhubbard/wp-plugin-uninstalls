#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__ebg_repository_%' OR option_name LIKE '_site_transient__ebg_repository_%'"

