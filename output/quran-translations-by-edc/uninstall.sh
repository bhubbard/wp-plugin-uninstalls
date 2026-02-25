#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quran_playlist_form'
wp option delete 'show_quran_playlist_rss'
wp option delete 'show_playlist_pdf'
wp option delete 'show_playlist_podcast'
wp option delete 'show_playlist_txt'
wp option delete 'show_playlist_MediaPlayer'
wp option delete 'show_playlist_QuickTime'
wp option delete 'show_playlist_realplayer'
wp option delete 'show_playlist_Winamp'
wp option delete 'show_playlist_tunein'
wp option delete 'playlist_title'
wp option delete 'quran_playlist_id'

