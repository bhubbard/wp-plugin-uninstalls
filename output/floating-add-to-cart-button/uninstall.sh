#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wfatcb_price'
wp option delete 'wfatcb_img'
wp option delete 'wfatcb_txt_color'
wp option delete 'wfatcb_btn_text'
wp option delete 'wfatcb_bg_main'
wp option delete 'wfatcb_btnbg'
wp option delete 'wfatcb_attributes'
wp option delete 'wfatcb_btnbg_border'
wp option delete 'wfatcb_only_mobile'

