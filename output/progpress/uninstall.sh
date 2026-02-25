#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcp_progpress_nanowrimo'
wp option delete 'jcp_progpress'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jcp_pp_%'"

