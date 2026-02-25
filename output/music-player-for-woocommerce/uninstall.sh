#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcmp_addon_player'
wp option delete 'wcmp_cpmediaplayer_addon_skin'
wp option delete 'wcmp_dokan_enabled'
wp option delete 'wcmp_dokan_hide_settings'
wp option delete 'wcmp_mvx_enabled'
wp option delete 'wcmp_mvx_hide_settings'
wp option delete 'wcmp_wcfm_enabled'
wp option delete 'wcmp_wcfm_hide_settings'
wp option delete 'wcmp_wcv_enabled'
wp option delete 'wcmp_wcv_hide_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'wcmp-landing-page'
wp option delete 'wcmp_global_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"
wp transient delete 'wcmp-landing-page'
wp transient delete 'wcmp-landing-page-redirect'
wp transient delete 'wcmp_clear_expired_transients'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_playback_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_playback_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_playback_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_playback_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_enable_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_enable_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_enable_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_enable_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_show_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_show_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_show_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_show_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_player_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_player_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_player_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_player_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_player_controls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_player_controls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_player_controls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_player_controls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_player_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_player_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_player_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_player_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_player_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_player_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_player_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_player_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_play_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_play_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_play_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_play_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_preload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_preload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_preload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_preload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_visualizer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_visualizer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_visualizer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_visualizer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_single_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_single_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_single_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_single_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_merge_in_grouped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_merge_in_grouped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_merge_in_grouped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_merge_in_grouped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_loop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_loop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_loop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_loop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcmp_on_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcmp_on_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcmp_on_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcmp_on_cover'"
