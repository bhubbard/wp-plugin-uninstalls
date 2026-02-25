#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ccs_%'"
wp option delete 'rewrite_rules'
wp option delete 'ccs_feed_base'

