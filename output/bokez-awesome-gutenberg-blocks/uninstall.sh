#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bokez_max_width'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bokez_%'"
wp option delete 'bokez_do_activation_redirect'

