#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%IssuerResponse' OR option_name LIKE '_site_transient_%IssuerResponse'"

