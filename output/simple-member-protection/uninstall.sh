#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smprotection_membership_levels'
wp option delete 'smprotection_enable_protection'
wp option delete 'smprotection_thank_you_page_url'
wp option delete 'stripe_secret_key'
wp option delete 'stripe_publishable_key'
wp option delete 'smprotection_stripe_mode'
wp option delete 'smprotection_stripe_live_secret'
wp option delete 'smprotection_stripe_test_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'membership_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'membership_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'membership_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'membership_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smprotection_required_membership_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smprotection_required_membership_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smprotection_required_membership_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smprotection_required_membership_level'"
