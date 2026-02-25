#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%wplfcf7error' OR option_name LIKE '_site_transient_%wplfcf7error'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%wplfcf7wwwerror' OR option_name LIKE '_site_transient_%wplfcf7wwwerror'"

