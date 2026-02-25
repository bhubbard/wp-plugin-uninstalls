#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ribbon_maker_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ribbon_maker_do_custom%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ribbon_maker_message%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ribbon_maker_bgcolor%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ribbon_maker_fgcolor%'"

