#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SPEEDBOOSTER_check_enable'
wp option delete 'SPEEDBOOSTER_adv_enable'
wp option delete 'SPEEDBOOSTER_admn_enable'
wp option delete 'SPEEDBOOSTER_html_enable'
wp option delete 'SPEEDBOOSTER_comm_enable'
wp option delete 'SPEEDBOOSTER_emoj_enable'
wp option delete 'SPEEDBOOSTER_migr_enable'
wp option delete 'SPEEDBOOSTER_shor_enable'
wp option delete 'SPEEDBOOSTER_quer_enable'
wp option delete 'SPEEDBOOSTER_foot_enable'
wp option delete 'SPEEDBOOSTER_async_enable'
wp option delete 'SPEEDBOOSTER_lazy_enable'
wp option delete 'SPEEDBOOSTER_cach_enable'
wp option delete 'SPEEDBOOSTER_embd_enable'
wp option delete 'wpss_disable_comment_cookies'

