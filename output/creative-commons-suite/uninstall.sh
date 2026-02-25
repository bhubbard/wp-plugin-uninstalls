#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cc-suite_%'"
wp option delete 'cc-suite_conditionals'
wp option delete 'cc-suite_tagline'
wp option delete 'cc-suite_usetargetblank'
wp option delete 'cc-suite_style_before'
wp option delete 'cc-suite_style_after'

