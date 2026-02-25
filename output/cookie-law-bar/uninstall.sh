#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clb_version'
wp option delete 'clb_bar_msg'
wp option delete 'clb_bar_pos'
wp option delete 'clb_bar_color'
wp option delete 'clb_bar_text_color'
wp option delete 'clb_btn_msg'
wp option delete 'clb_btn_color'
wp option delete 'clb_btn_text_color'

