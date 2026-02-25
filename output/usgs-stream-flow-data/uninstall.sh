#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kwc_usgs_admin-%' OR option_name LIKE '_site_transient_kwc_usgs_admin-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kwc_usgs-%' OR option_name LIKE '_site_transient_kwc_usgs-%'"

