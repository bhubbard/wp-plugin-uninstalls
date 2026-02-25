#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%appid'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%username'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%client_folders_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%apiurl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%forms_index'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%succesfully_connected' OR option_name LIKE '_site_transient_%succesfully_connected'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%connected_folder' OR option_name LIKE '_site_transient_%connected_folder'"

