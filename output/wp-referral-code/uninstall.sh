#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_referral_code_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrc_referrer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrc_referrer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrc_referrer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrc_referrer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrc_ref_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrc_ref_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrc_ref_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrc_ref_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrc_invited_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrc_invited_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrc_invited_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrc_invited_users'"
