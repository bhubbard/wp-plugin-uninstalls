#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'floatyheader_sh_selector'
wp option delete 'floatyheader_sh_bg_color'
wp option delete 'floatyheader_sh_text_color'
wp option delete 'floatyheader_sh_offset'
wp option delete 'floatyheader_sh_transition_effect'
wp option delete 'floatyheader_sh_disable_mobile'
wp option delete 'floatyheader_sh_mobile_bg_color'
wp option delete 'floatyheader_sh_mobile_text_color'
wp option delete 'floatyheader_sh_scroll_up_mode'
wp option delete 'floatyheader_sh_scroll_up_desktop'
wp option delete 'floatyheader_sh_scroll_up_mobile'

