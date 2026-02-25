#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'latest-update_%'"
wp option delete 'latest-update_conditionals'
wp option delete 'latest-update_before_text'
wp option delete 'latest-update_after_text'
wp option delete 'latest-update_date_format'
wp option delete 'latest-update_before_style'
wp option delete 'latest-update_after_style'

