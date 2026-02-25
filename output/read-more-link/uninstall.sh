#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'read_more_link_text'
wp option delete 'read_more_link_br'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'read_more_link_%'"

