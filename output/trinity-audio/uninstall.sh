#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trinity_audio_max_exec_time'
wp option delete 'trinity_audio_installkey'
wp option delete 'trinity_audio_bulk_update_heartbeat'
wp option delete 'trinity_audio_bulk_update_num_posts_updated'
wp option delete 'trinity_audio_gender_id'
wp option delete 'trinity_audio_defconf'
wp option delete 'trinity_audio_add_post_title'
wp option delete 'trinity_audio_add_post_excerpt'
wp option delete 'trinity_audio_position'
wp option delete 'trinity_audio_poweredby'
wp option delete 'trinity_audio_skip_tags'
wp option delete 'trinity_audio'
wp option delete 'trinity_audio_update_all'
wp option delete 'trinity_audio_source_language'
wp option delete 'trinity_audio_check_for_loop'
wp option delete 'trinity_player_position'
wp option delete 'trinity_audio_configuration_v5_failed'
wp option delete 'trinity_audio_voice_id'
wp option delete 'trinity_audio_translate'

# Delete Transients
wp transient delete 'trinity_audio_languages_cache'

# Clear Cron Jobs
wp cron event delete 'bl_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trinity_audio_post_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trinity_audio_post_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trinity_audio_post_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trinity_audio_post_hash'"
