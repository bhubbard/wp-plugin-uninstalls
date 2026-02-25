#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_acfict_notice_%' OR option_name LIKE '_site_transient_acfict_notice_%'"

