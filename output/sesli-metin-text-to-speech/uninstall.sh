#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sesli_metin_person'
wp option delete 'sesli_metin_email'
wp option delete 'sesli_metin_password'
wp option delete 'sesli_metin_pitch'
wp option delete 'sesli_metin_speed'
wp option delete 'sesli_metin_post_types'
wp option delete 'sesli_metin_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sesli_metin_audio_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sesli_metin_audio_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sesli_metin_audio_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sesli_metin_audio_url'"
