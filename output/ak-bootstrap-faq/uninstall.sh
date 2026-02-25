#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'faq_display_mode'
wp option delete 'cat_h_color'
wp option delete 'ques_bg_color'
wp option delete 'ques_txt_color'
wp option delete 'ques_bdr_color'
wp option delete 'ans_bg_color'
wp option delete 'ans_txt_color'
wp option delete 'ans_bdr_color'
wp option delete 'faq_icon_color'
wp option delete 'act_icon_color'

