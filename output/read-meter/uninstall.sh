#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bsf_rt_general_settings'
wp option delete 'bsf_rt_saved_msg'
wp option delete 'bsf_rt_read_time_settings'
wp option delete 'bsf_rt_progress_bar_settings'

