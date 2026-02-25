#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_cdp_cool_installation'
wp option delete '_cdp_redirect'
wp option delete 'wp_mypopups_do_activation_redirect'
wp option delete 'sfsi_plugin_do_activation_redirect'
wp option delete '_bmi_redirect'
wp option delete 'irrp_activation_redirect'
wp option delete '_cdp_globals'
wp option delete '_cdp_review'
wp option delete '_cdp_mishmash'
wp option delete '_cdp_profiles'
wp option delete '_cdp_show_copy'
wp option delete '_cdp_crons'
wp option delete '_cdp_default_setup'
wp option delete '_tifm_feature_enabled'
wp option delete '_tifm_disable_feature_forever'
wp option delete '_tifm_hide_notice_forever'
wp option delete '_cdp_no_intro'
wp option delete '_cdp_preselections'
wp option delete 'cdp_dismiss_perf_notice'
wp option delete 'cdp_latest_slow_performance'
wp option delete 'cdp_copy_logs_times'
wp option delete '_irb_h_bn_review'
wp option delete 'hide_tastewp_notice'
wp option delete '_tifm_force_disable_feature_update'

# Clear Cron Jobs
wp cron event delete 'cdp_cron_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cdp_origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cdp_origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cdp_origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cdp_origin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cdp_origin_site'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cdp_origin_site'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cdp_origin_site'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cdp_origin_site'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
