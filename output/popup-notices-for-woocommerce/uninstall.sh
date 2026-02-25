#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'ttt_pnwc_opt_enable'
wp option delete 'ttt_pnwc_opt_hide_error_enable'
wp option delete 'ttt_pnwc_opt_hide_success_enable'
wp option delete 'ttt_pnwc_opt_hide_info_enable'
wp option delete 'ttt_pnwc_opt_allowed_device_types'
wp option delete 'ttt_pnwc_opt_click_inside_close'
wp option delete 'ttt_pnwc_opt_type_error_enable'
wp option delete 'ttt_pnwc_opt_type_info_enable'
wp option delete 'ttt_pnwc_opt_type_success_enable'
wp option delete 'ttt_pnwc_opt_ajax'
wp option delete 'ttt_pnwc_opt_ignore_msg_field'
wp option delete 'ttt_pnwc_opt_ignore_search_method'
wp option delete 'ttt_pnwc_opt_ignore_msg_regex_f'
wp option delete 'ttt_pnwc_opt_prevent_closing_if_clicking_out'
wp option delete 'ttt_pnwc_opt_audio_enable'
wp option delete 'ttt_pnwc_opt_micromodal_load_method'

