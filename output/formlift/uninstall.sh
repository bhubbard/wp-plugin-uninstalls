#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FormLift_Oauth_Tokens'
wp option delete 'Oauth_App_Domain'
wp option delete 'oauth_last_status'
wp option delete 'formlift_web_forms'
wp option delete 'formlift_leaderboard_rank'
wp option delete 'formlift_sessions_db_version'
wp option delete 'formlift_modules'
wp option delete 'formlift_submissions_db_version'
wp option delete 'formlift_impressions_db_version'

# Delete Transients
wp transient delete 'formlift_auth_pass'
wp transient delete 'formlift_awards_check'
wp transient delete 'formlift_post_url'
wp transient delete 'formlift_custom_fields'
wp transient delete 'formlift_clean_up_waiting'
wp transient delete 'formlift_license_verification'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flp_form_bits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flp_form_bits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flp_form_bits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flp_form_bits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inf_form_xid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inf_form_xid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inf_form_xid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inf_form_xid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inf_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inf_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inf_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inf_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'infusionsoft_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'infusionsoft_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'infusionsoft_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'infusionsoft_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conversion_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conversion_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conversion_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conversion_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'impressions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'impressions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'impressions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'impressions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'submissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'submissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'submissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'submissions'"
