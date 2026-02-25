#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'gscoach_activation_redirect'
wp option delete 'gs_coach_active_time'
wp option delete 'gs_coach_review_dismiss'
wp option delete 'gs_coach_maybe_later'

# Delete Transients
wp transient delete 'gsplugins-pro-plugins'
wp transient delete 'gsplugins_free_plugins'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gscoach_profession'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gscoach_profession'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gscoach_profession'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gscoach_profession'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gscoach_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gscoach_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gscoach_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gscoach_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gscoach_tw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gscoach_tw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gscoach_tw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gscoach_tw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gscoach_fb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gscoach_fb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gscoach_fb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gscoach_fb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gscoach_gplus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gscoach_gplus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gscoach_gplus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gscoach_gplus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gscoach_ytube'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gscoach_ytube'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gscoach_ytube'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gscoach_ytube'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gscoach_psite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gscoach_psite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gscoach_psite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gscoach_psite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
