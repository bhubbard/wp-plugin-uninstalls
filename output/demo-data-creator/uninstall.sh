#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'registrationnotification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '% header'"

