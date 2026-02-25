#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'formtoemail_shortcodes-%'"
wp option delete 'formtoemail_shortcodes_list'

