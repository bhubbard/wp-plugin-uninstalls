#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hd_bcve_%' OR option_name LIKE '_site_transient_hd_bcve_%'"

