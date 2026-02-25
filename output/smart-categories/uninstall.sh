#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AutoCatActive'
wp option delete 'AutoCatRuleIDs'
wp option delete 'AutoCatRule1Cat'
wp option delete 'AutoCatRule1Phrase'
wp option delete 'AutoCatLastSorted'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Cat'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Phrase'"

