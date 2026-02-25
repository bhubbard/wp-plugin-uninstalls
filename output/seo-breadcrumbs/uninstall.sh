#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sbc_id'
wp option delete 'sbc_separator'
wp option delete 'sbc_home'
wp option delete 'sbc_default_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sbc_%'"
wp option delete 'sbc_before_bgcolor'
wp option delete 'sbc_after_bgcolor'
wp option delete 'sbc_before_fontcolor'
wp option delete 'sbc_after_fontcolor'
wp option delete 'sbc_separator_color'

