#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pppiboi_enable_plugin'
wp option delete 'pppiboi_show_on_devices'
wp option delete 'pppiboi_button_design'
wp option delete 'pppiboi_button_position'
wp option delete 'pppiboi_button_size'
wp option delete 'pppiboi_button_type'
wp option delete 'pppiboi_show_in_locations'
wp option delete 'pppiboi_exclude_urls'
wp option delete 'pppiboi_exclude_mode'

