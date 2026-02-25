#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_global_setting'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_block_style'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_breakpoint'"

