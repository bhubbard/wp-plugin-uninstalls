#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_sptp_settings'
wp option delete 'sp_wp_team_version'
wp option delete 'sp_wp_team_first_version'
wp option delete 'sp_wp_team_activation_date'
wp option delete 'sp_wp_team_db_version'
wp option delete 'sp_wpt_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_team_page_id%'"

# Delete Transients
wp transient delete 'spwpteam_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sptp_add_member'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sptp_add_member'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sptp_add_member'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sptp_add_member'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sptp_generator_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sptp_generator_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sptp_generator_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sptp_generator_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sptp_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sptp_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sptp_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sptp_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_spf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_spf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_spf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_spf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
