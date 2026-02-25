#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'metgs_flush_rewrite_rules_flag'

