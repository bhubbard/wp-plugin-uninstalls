#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsc_disable_option'
wp option delete 'fsc_reading_time_pre_text'
wp option delete 'fsc_btn_bg'
wp option delete 'fsc_btn_color'
wp option delete 'fsc_btn_border'
wp option delete 'fsc_reading_time_bg'
wp option delete 'fsc_reading_time_color'

