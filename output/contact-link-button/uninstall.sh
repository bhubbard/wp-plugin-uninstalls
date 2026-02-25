#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'clbntb_color_%'"
wp option delete 'clbntb_phone_bar'
wp option delete 'clbntb_location_bottom'
wp option delete 'setting_size'
wp option delete 'clbntb_location'
wp option delete 'clbntb_off_effects'
wp option delete 'clbntb_hide_mobile'
wp option delete 'clbntb_hide_desktop'
wp option delete 'clbntb_hide_default_all_in_one'
wp option delete 'clbntb_enable_all_in_one'

