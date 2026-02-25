#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_banklist' OR option_name LIKE '_site_transient_%_banklist'"

