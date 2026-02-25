#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'counter_ecl_time'
wp option delete 'counter_ecl_time_message'
wp option delete 'counter_ecl'
wp option delete 'counter_ecl_message'
wp option delete 'counter_ecl_message_active'
wp option delete 'counter_ecl_color_text'
wp option delete 'counter_ecl_color_background'
wp option delete 'counter_ecl_effects'
wp option delete 'counter_ecl_position'
wp option delete 'counter_ecl_hide'

