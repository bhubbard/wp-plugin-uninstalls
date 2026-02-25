#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inventive_stock_player_list'
wp option delete 'inventive_stock_player_list_buy'
wp option delete 'inventive_stock_player_list_autoplay'
wp option delete 'inventive_stock_player_list_loop'
wp option delete 'inventive_stock_player_list_preload'
wp option delete 'inventive_stock_player_single_show'
wp option delete 'inventive_stock_player_single_buy'
wp option delete 'inventive_stock_player_single_autoplay'
wp option delete 'inventive_stock_player_single_loop'
wp option delete 'inventive_stock_player_single_preload'
wp option delete 'inventive_stock_player_spectrum'
wp option delete 'inventive_stock_player_bg_color'
wp option delete 'inventive_stock_player_spectrum_bg_color'
wp option delete 'inventive_stock_player_spectrum_bars_color'
wp option delete 'inventive_stock_player_spectrum_background_opacity'
wp option delete 'inventive_stock_player_spectrum_bars_number'
wp option delete 'inventive_stock_player_spectrum_bars_width'
wp option delete 'inventive_stock_player_spectrum_bars_distance'
wp option delete 'inventive_stock_player_spectrum_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_spectrum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_spectrum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_spectrum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_spectrum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_link_local'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_link_local'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_link_local'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_link_local'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_audio_jungle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_audio_jungle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_audio_jungle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_audio_jungle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_soundcloud'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_soundcloud'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_soundcloud'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_soundcloud'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_luckstock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_luckstock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_luckstock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_luckstock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_list_autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_list_autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_list_autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_list_autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_single_autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_single_autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_single_autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_single_autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_list_loop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_list_loop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_list_loop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_list_loop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_single_loop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_single_loop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_single_loop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_single_loop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_list_preload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_list_preload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_list_preload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_list_preload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_single_preload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_single_preload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_single_preload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_single_preload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_single_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_single_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_single_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_single_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_single_buy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_single_buy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_single_buy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_single_buy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inventive_stock_player_list_buy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inventive_stock_player_list_buy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inventive_stock_player_list_buy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inventive_stock_player_list_buy'"
