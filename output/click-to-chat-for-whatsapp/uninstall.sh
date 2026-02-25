#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccw_options'
wp option delete 'ht_ctc_switch'
wp option delete 'ht_ctc_othersettings'
wp option delete 'ht_ctc_s1'
wp option delete 'ht_ctc_admin_pages'
wp option delete 'ht_ctc_chat_options'
wp option delete 'ht_ctc_notices'
wp option delete 'ht_ctc_pro_plugin_details'
wp option delete 'ht_ctc_group'
wp option delete 'ht_ctc_share'
wp option delete 'ht_ctc_plugin_details'
wp option delete 'ht_ctc_admin_demo_active'
wp option delete 'ht_ctc_greetings_options'
wp option delete 'ht_ctc_greetings_settings'
wp option delete 'ht_ctc_cs_options'
wp option delete 'ht_ctc_s2'
wp option delete 'ht_ctc_s3'
wp option delete 'ht_ctc_s3_1'
wp option delete 'ht_ctc_s4'
wp option delete 'ht_ctc_s5'
wp option delete 'ht_ctc_s6'
wp option delete 'ht_ctc_s7'
wp option delete 'ht_ctc_s7_1'
wp option delete 'ht_ctc_s8'
wp option delete 'ht_ctc_s99'
wp option delete 'ht_ctc_code_blocks'
wp option delete 'ht_ctc_one_time'
wp option delete 'ht_ctc_woo_options'
wp option delete 'ht_ctc_main_options'
wp option delete 'ccw_options_cs'
wp option delete 'ht_ccw_ga'
wp option delete 'ht_ccw_fb'
wp option delete 'ht_ctc_greetings_1'
wp option delete 'ht_ctc_greetings_2'
wp option delete 'ccw_plugin_details'

# Delete Transients
wp transient delete 'ht_ctc_cache_cleared_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ht_ctc_pagelevel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ht_ctc_pagelevel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ht_ctc_pagelevel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ht_ctc_pagelevel'"
