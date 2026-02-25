#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mametech_cb_phone_number'
wp option delete 'mametech_cb_enabled'
wp option delete 'mametech_cb_message'
wp option delete 'mametech_cb_position'
wp option delete 'mametech_cb_button_size'
wp option delete 'mametech_cb_theme'
wp option delete 'mametech_cb_schedule_enabled'
wp option delete 'mametech_cb_schedule_hours'
wp option delete 'mametech_cb_enable_stats'
wp option delete 'mametech_cb_tooltip_text'
wp option delete 'mametech_cb_show_tooltip'
wp option delete 'mametech_cb_multiple_menu_text'
wp option delete 'mametech_cb_multiple_numbers'

