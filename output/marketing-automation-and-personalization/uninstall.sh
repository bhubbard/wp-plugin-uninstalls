#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'convesioconvert_data_exists'
wp option delete 'convesioconvert_consents'
wp option delete 'convesioconvert_site_id'
wp option delete 'convesioconvert_site_token'
wp option delete 'convesioconvert_verification_secret'
wp option delete 'convesioconvert_site_url'
wp option delete 'convesioconvert_user_email'
wp option delete 'convesioconvert_pause'
wp option delete 'woo_marketplace_customer_id'
wp option delete 'woo_marketplace_subscription_id'
wp option delete 'convesioconvert_smart_rating_dismissed'
wp option delete 'convesioconvert_smart_rating_last_fetch'
wp option delete 'convesioconvert_smart_rating_necessary_info'
wp option delete 'convesioconvert_terms_last_modification'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'convesioconvert_activation_redirect'
wp transient delete 'convesioconvert_dashboard_health_status'
wp transient delete 'convesioconvert_health_status_fresh'
wp transient delete 'convesioconvert_health_status'
wp transient delete 'convesioconvert_consent_key'
wp transient delete 'convesioconvert_integration_success_id'
wp transient delete 'convesioconvert_onetime_notices'
wp transient delete 'convesioconvert_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convesioconvert_email_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convesioconvert_email_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convesioconvert_email_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convesioconvert_email_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%/convesioconvert/email_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%/convesioconvert/email_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%/convesioconvert/email_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%/convesioconvert/email_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convesioconvert_user_last_modification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convesioconvert_user_last_modification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convesioconvert_user_last_modification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convesioconvert_user_last_modification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooMarketplaceCustomerId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooMarketplaceCustomerId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooMarketplaceCustomerId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooMarketplaceCustomerId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_saved_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_saved_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_saved_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_saved_cart'"
