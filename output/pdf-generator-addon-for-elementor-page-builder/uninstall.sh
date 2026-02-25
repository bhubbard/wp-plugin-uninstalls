#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtw_pgaepb_header_setting_opt'
wp option delete 'rtw_pgaepb_footer_setting_opt'
wp option delete 'rtw_pgaepb_basic_setting_opt'
wp option delete 'rtw_pgaepb_css_setting_opt'
wp option delete 'rtw_pgaepb_watermark_setting_opt'
wp option delete 'rtw_pgaepb_custom_fonts'
wp option delete 'rtw_pgaepb_offer_time'
wp option delete 'rtwwpf_css_setting_opt'
wp option delete 'rtwwpf_watermark_setting_opt'

