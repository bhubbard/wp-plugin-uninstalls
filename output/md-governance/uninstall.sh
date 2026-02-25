#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'md_governance_disable_all_blocks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'md_governance_block_%'"

