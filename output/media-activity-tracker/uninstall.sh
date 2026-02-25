#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mediactr_treshold'
wp option delete 'mediactr_posttypes'
wp option delete 'mediactr_posttype_activities'
wp option delete 'mediactr_login_points'
wp option delete 'mediactr_streaklevel'
wp option delete 'mediactr_badge_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gp_ld_cert_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gp_ld_cert_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gp_ld_cert_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gp_ld_cert_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gp_ld_cert_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gp_ld_cert_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gp_ld_cert_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gp_ld_cert_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gp_ld_cert_threshold'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gp_ld_cert_threshold'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gp_ld_cert_threshold'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gp_ld_cert_threshold'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpd_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpd_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpd_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpd_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpd_reading_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpd_reading_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpd_reading_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpd_reading_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ld_achievements_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ld_achievements_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ld_achievements_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ld_achievements_notifications'"
