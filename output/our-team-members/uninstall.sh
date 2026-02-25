#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpsf_term_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpsf-mt-%' OR option_name LIKE '_site_transient_wpsf-mt-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpsf_%' OR option_name LIKE '_site_transient_wpsf_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpsf-tt-%' OR option_name LIKE '_site_transient_wpsf-tt-%'"

