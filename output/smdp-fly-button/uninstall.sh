#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'smdps_smdp_btn_frontpage_only'
wp option delete 'smdps_smdp_bckgrd_color'
wp option delete 'smdps_smdp_icn_color'
wp option delete 'smdps_smdp_fnt_color'
wp option delete 'smdps_smdp_btnlink_url'
wp option delete 'smdps_smdp_btnlink_target'
wp option delete 'smdps_smdp_btn_title'
wp option delete 'smdps_smdp_btn_descr'
wp option delete 'smdps_smdp_btn_bottomdist'
wp option delete 'smdps_smdp_btn_bottomdist_mobi'
wp option delete 'smdps_smdp_btn_icn_size'
wp option delete 'smdps_smdp_btn_fa_cls'
wp option delete 'smdps_smdp_btn_icn_topmargin'
wp option delete 'smdps_smdp_btn_leftdistanse'
wp option delete 'smdps_smdp_btn_contntopen'
wp option delete 'smdp_usrrefid'
wp option delete 'smdp_usrcommission'

