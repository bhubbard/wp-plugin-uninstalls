#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-conditional-tags'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-conditional-tags-activate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-visibility'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-only_show_in'"
wp option delete 'widget_logic_visual'

