#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_voicexpress_affiliate_code'
wp option delete 'voicexpress_crontab'
wp option delete 'voicexpress_player'
wp option delete 'voicexpress_theme'
wp option delete 'voicexpress_show_spotify_icon'
wp option delete 'voicexpress_spotify_url'
wp option delete 'voicexpress_hide_download'
wp option delete 'voicexpress_hide_text'
wp option delete 'voicexpress_enable_spotify'
wp option delete 'voicexpress_single_start'
wp option delete 'voicexpress_single_end'
wp option delete 'voicexpress_auto'
wp option delete 'voicexpress_credits'
wp option delete 'voicexpress_voice'
wp option delete 'voicexpress_secret_key'
wp option delete 'voicexpress_podcast_rss'
wp option delete 'voicexpress_podcast_title'
wp option delete 'voicexpress_podcast_description'
wp option delete 'voicexpress_promo_code'
wp option delete 'voicexpress_promo_code_used'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'voicexpress_cache_%'"
wp option delete 'voicexpress_account_connected'

# Clear Cron Jobs
wp cron event delete 'voicexpress_send_post'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voicexpress_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voicexpress_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voicexpress_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voicexpress_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voicexpress_gerar_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voicexpress_gerar_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voicexpress_gerar_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voicexpress_gerar_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voicexpress_voice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voicexpress_voice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voicexpress_voice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voicexpress_voice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voicexpress_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voicexpress_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voicexpress_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voicexpress_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voicexpress_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voicexpress_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voicexpress_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voicexpress_sent'"
