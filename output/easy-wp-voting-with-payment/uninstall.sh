#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ewvwp_paystack_secret_key'
wp option delete 'ewvwp_display_vote'
wp option delete 'ewvwp_display_state'
wp option delete 'ewvwp_paystack_public_key'
wp option delete 'ewvwp_min_amount'
wp option delete 'ewvwp_template'
wp option delete 'ewvwp_no_of_candidate_per_page'

# Delete Transients
wp transient delete 'ewvwp-admin-notice-example'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewvwp_nickname_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewvwp_nickname_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewvwp_nickname_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewvwp_nickname_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewvwp_state_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewvwp_state_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewvwp_state_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewvwp_state_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewvwp_age_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewvwp_age_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewvwp_age_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewvwp_age_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewvwp_vote_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewvwp_vote_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewvwp_vote_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewvwp_vote_value_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ewvwp_occupation_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ewvwp_occupation_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ewvwp_occupation_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ewvwp_occupation_value_key'"
