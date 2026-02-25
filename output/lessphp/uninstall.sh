#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_stylesheet_path' OR option_name LIKE '_site_transient_%_stylesheet_path'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_stylesheet_uri' OR option_name LIKE '_site_transient_%_stylesheet_uri'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_stylesheet_time' OR option_name LIKE '_site_transient_%_stylesheet_time'"

