#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chessgame_shizzle-boardtheme'
wp option delete 'chessgame_shizzle-piecetheme'
wp option delete 'chessgame_shizzle-honeypot'
wp option delete 'chessgame_shizzle-honeypot_value'
wp option delete 'chessgame_shizzle-nonce'
wp option delete 'chessgame_shizzle-timeout'
wp option delete 'chessgame_shizzle-notifybymail'
wp option delete 'chessgame_shizzle-mail-from'
wp option delete 'chessgame_shizzle-simple-list-search'
wp option delete 'chessgame_shizzle-blogpage'
wp option delete 'chessgame_shizzle-rss'
wp option delete 'chessgame_shizzle-version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_pgn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_pgn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_pgn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_pgn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_puzzle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_puzzle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_puzzle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_puzzle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_white_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_white_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_white_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_white_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_black_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_black_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_black_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_black_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_elo_white_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_elo_white_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_elo_white_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_elo_white_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_elo_black_player'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_elo_black_player'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_elo_black_player'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_elo_black_player'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_tournament'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_tournament'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_tournament'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_tournament'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_round'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_round'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_round'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_round'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_submitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_submitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_submitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_submitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cs_chessgame_fen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cs_chessgame_fen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cs_chessgame_fen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cs_chessgame_fen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chessgame_shizzle_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chessgame_shizzle_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chessgame_shizzle_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chessgame_shizzle_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chessgame_shizzle_simple_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chessgame_shizzle_simple_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chessgame_shizzle_simple_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chessgame_shizzle_simple_list'"
