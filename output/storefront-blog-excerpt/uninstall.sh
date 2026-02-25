#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'activation_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"

