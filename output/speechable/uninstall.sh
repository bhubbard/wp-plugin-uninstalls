#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'speechable_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_speechable_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_speechable_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_speechable_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_speechable_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_speechable_word_timings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_speechable_word_timings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_speechable_word_timings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_speechable_word_timings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piper_tts_audio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piper_tts_audio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piper_tts_audio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piper_tts_audio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'piper_tts_word_timings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'piper_tts_word_timings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'piper_tts_word_timings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'piper_tts_word_timings'"
