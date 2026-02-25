#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swtor_server_status_morecss'
wp option delete 'swtor_server_status_css'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'swtor_server_status_%'"

