#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WpFastestCacheExclude'
wp option delete 'settings_activecampaign'
wp option delete 'forms_for_campaign_monitor_forms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_queried'"
wp option delete 'convertkit_version'
wp option delete '_wp_convertkit_settings_restrict_content'
wp option delete 'ck_code_verifier'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-request'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed'"

# Delete Transients
wp transient delete 'doing_cron'
wp transient delete 'convertkit-setup'

# Clear Cron Jobs
wp cron event delete 'convertkit_refresh_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convertkit_broadcast_export_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convertkit_broadcast_export_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convertkit_broadcast_export_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convertkit_broadcast_export_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convertkit_broadcast_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convertkit_broadcast_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convertkit_broadcast_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convertkit_broadcast_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convertkit_convertkit_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convertkit_convertkit_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convertkit_convertkit_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convertkit_convertkit_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ck_default_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ck_default_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ck_default_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ck_default_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_convertkit_action_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_convertkit_action_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_convertkit_action_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_convertkit_action_%'"
