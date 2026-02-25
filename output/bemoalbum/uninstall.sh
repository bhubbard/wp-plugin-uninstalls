#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'z_taxonomy_image%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bemoalbum_taxonomy_image%'"

