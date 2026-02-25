#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%more_updates' OR option_name LIKE '_site_transient_%more_updates'"

