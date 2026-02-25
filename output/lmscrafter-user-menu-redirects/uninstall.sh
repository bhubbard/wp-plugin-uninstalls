#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lmsc_rsum_options'
wp option delete 'lmsc_rsum_installed_time'
wp option delete 'lmsc_rsum_email_subscribed'
wp option delete 'lmsc_rsum_subscriber_email'
wp option delete 'lmsc_rsum_subscription_date'
wp option delete 'lmsc_rsum_activation_time'
wp option delete 'rsum_options'
wp option delete 'lmsc_rsum_migrated_from_rsum'
wp option delete 'llrm'
wp option delete 'lmsc_rsum_migrated_from_llrm'
wp option delete 'lmsc_rsum_migration_date'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'lmsc_rsum_activation_redirect'
wp transient delete 'rsum_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmsc_rsum_login_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmsc_rsum_login_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmsc_rsum_login_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmsc_rsum_login_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmsc_rsum_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmsc_rsum_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmsc_rsum_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmsc_rsum_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmsc_rsum_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmsc_rsum_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmsc_rsum_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmsc_rsum_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmsc_rsum_first_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmsc_rsum_first_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmsc_rsum_first_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmsc_rsum_first_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmsc_rsum_visibility_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmsc_rsum_visibility_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmsc_rsum_visibility_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmsc_rsum_visibility_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmsc_rsum_visibility_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmsc_rsum_visibility_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmsc_rsum_visibility_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmsc_rsum_visibility_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lmsc_rsum_visibility_memberships'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lmsc_rsum_visibility_memberships'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lmsc_rsum_visibility_memberships'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lmsc_rsum_visibility_memberships'"
