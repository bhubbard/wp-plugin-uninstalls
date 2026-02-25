#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wodify_program'
wp option delete 'wodify_location'
wp option delete 'wodify_timezone'
wp option delete 'wdfy_prg_inactive'
wp option delete 'wdfy_publishdatesetting'
wp option delete 'wdfy_publishoffset'
wp option delete 'wdfy_classes_cron'
wp option delete 'wdfy_wodpublish_cron'
wp option delete 'wdfy_wodpublish_days'
wp option delete 'wdfy_show_wodimages'
wp option delete 'wdfy_local_images'
wp option delete 'widget_sos_wodify_wod_widget'
wp option delete 'wdfy_coach_url'
wp option delete 'wdfy_prg_image'
wp option delete 'wdfy_schema_siteimage'
wp option delete 'wdfy_schema_pricerange'
wp option delete 'wdfy_schema_phone'
wp option delete 'wdfy_schema_addjson'
wp option delete 'wdfy_wpub_location'
wp option delete 'wdfy_wpub_program'
wp option delete 'wdfy_wpub_autocreate'
wp option delete 'wdfy_wpub_title'
wp option delete 'wdfy_wpub_publish'
wp option delete 'wdfy_wpub_incomp'
wp option delete 'wdfy_wpub_excomp'
wp option delete 'wdfy_wpub_category'
wp option delete 'wdfy_wpub_posttype'
wp option delete 'wdfy_wpub_author'
wp option delete 'wdfy_wpub_images'
wp option delete 'wdfy_wpub_thumb'
wp option delete 'wodify_apikey'
wp option delete 'wdfy_locations'
wp option delete 'wdfy_programs'
wp option delete 'wdfy_coaches'
wp option delete 'wodify_debugmode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wdfy_image_attachid%'"
wp option delete 'wdfy_alexa_magicnumber'
wp option delete 'wdfy_api_program_short'
wp option delete 'wdfy_api_program'
wp option delete 'wdfy_apiactive'
wp option delete 'wdfy_prg_bgcolor'
wp option delete 'wdfy_prg_url'
wp option delete 'wdfy_prg_restshortname'

# Delete Transients
wp transient delete 'wdfy_cachedlocation'
wp transient delete 'wdfy_cachedprogram'
wp transient delete 'wdfy_cachedcoach'
wp transient delete 'wdfy_cache_date'

# Clear Cron Jobs
wp cron event delete 'wdfy_cron_cache_classes'
wp cron event delete 'wdfy_cron_wodpublish'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wdfy_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wdfy_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wdfy_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wdfy_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wdfy_program'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wdfy_program'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wdfy_program'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wdfy_program'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wdfy_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wdfy_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wdfy_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wdfy_location'"
