#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%opacity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scale'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%margin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%on_flg'"
wp option delete 'low_key_toolbar_on_flg'
wp option delete 'low_key_toolbar_opacity'
wp option delete 'low_key_toolbar_scale'
wp option delete 'low_key_toolbar_margin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'low_key_toolbar_%'"

