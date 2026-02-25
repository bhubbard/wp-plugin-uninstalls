#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'patreon-plugin-first-activated'
wp option delete 'patreon-installation-api-version'
wp option delete 'patreon-creator-id'
wp option delete 'patreon-campaign-id'
wp option delete 'patreon-client-id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'patreon_api_call_count_%'"
wp option delete 'patreon-prevent-caching-gated-content'
wp option delete 'patreon-post-import-in-progress'
wp option delete 'patreon-manual-import-batch-last-triggered'
wp option delete 'patreon-post-import-next-cursor'
wp option delete 'patreon-update-posts'
wp option delete 'patreon-sync-post-type'
wp option delete 'patreon-sync-post-category'
wp option delete 'patreon-sync-post-term'
wp option delete 'patreon-post-author-for-synced-posts'
wp option delete 'patreon-override-synced-post-publish-date'
wp option delete 'patreon-auto-publish-patron-only-posts'
wp option delete 'patreon-auto-publish-public-posts'
wp option delete 'patreon-set-featured-image'
wp option delete 'patreon-enable-login-with-patreon'
wp option delete 'patreon-custom-universal-banner'
wp option delete 'patreon-custom-page-name'
wp option delete 'patreon-creator-url'
wp option delete 'patreon-creator-has-tiers'
wp option delete 'patreon-creator-tiers'
wp option delete 'patreon-lock-entire-site'
wp option delete 'patreon-hide-login-button'
wp option delete 'patreon-creator-first-name'
wp option delete 'patreon-currency-sign'
wp option delete 'patreon-currency-sign-behind'
wp option delete 'patreon-enable-allow-admins-login-with-patreon'
wp option delete 'patreon-client-secret'
wp option delete 'patreon-creators-access-token'
wp option delete 'patreon-creators-refresh-token'
wp option delete 'patreon-fetch-creator-id'
wp option delete 'patreon-paywall-img-url'
wp option delete 'patreon-paywall-blocked-img-url'
wp option delete 'patreon-rewrite-rules-flushed'
wp option delete 'patreon-can-use-api-v2'
wp option delete 'patreon-enable-register-with-patreon'
wp option delete 'patreon-enable-redirect-to-page-after-login'
wp option delete 'patreon-enable-redirect-to-page-id'
wp option delete 'patreon-protect-default-image-patreon-level'
wp option delete 'patreon-enable-file-locking'
wp option delete 'patreon-enable-strict-oauth'
wp option delete 'patreon-sync-posts'
wp option delete 'patreon-remove-deleted-posts'
wp option delete 'patreon-last-50-conn-errors'
wp option delete 'patreon-post-sync-webhook'
wp option delete 'patreon-setup-done'
wp option delete 'patreon-redirect_to_setup_wizard'
wp option delete 'patreon-setup-wizard-last-call-result'
wp option delete 'patreon-post-sync-set-up'
wp option delete 'patreon-existing-installation'
wp option delete 'patreon-creator-full-name'
wp option delete 'patreon-creator-last-name'
wp option delete 'patreon-wordpress-app-credentials-failure'
wp option delete 'patreon-creators-access-token-scope'
wp option delete 'patreon-creators-refresh-token-expiration'
wp option delete 'patreon-show-site-disconnect-success-notice'
wp option delete 'patreon-setup-wizard-notice-dismissed'
wp option delete 'api-version-update-notice-dismissed'
wp option delete 'api-version-update-notice-dismissed-time'
wp option delete 'patreon-rate-plugin-notice-shown'
wp option delete 'patreon-wordpress-app-credentials-success'
wp option delete 'patreon-wordpress-update-available'
wp option delete 'patreon-addon-upsell-shown'
wp option delete 'patron_content_manager_pitch_shown'
wp option delete 'patreon-critical-issues'
wp option delete 'patreon-wordpress-do-api-connectivity-check'
wp option delete 'patreon-setup_is_being_done'
wp option delete 'patreon-first-post-import-started'
wp option delete 'patreon-last-non-system-notice-shown-date'
wp option delete 'patreon-last-system-notice-shown-date'
wp option delete 'patreon-post-sync-webhook-saved'

# Clear Cron Jobs
wp cron event delete 'patreon_five_minute_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-post-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-post-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-post-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-post-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-post-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-post-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-post-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-post-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-active-patrons-only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-active-patrons-only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-active-patrons-only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-active-patrons-only'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-total-patronage-level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-total-patronage-level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-total-patronage-level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-total-patronage-level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-avatar-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-avatar-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-avatar-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-avatar-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_token_expires_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_token_expires_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_token_expires_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_token_expires_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_token_minted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_token_minted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_token_minted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_token_minted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_last_logged_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_last_logged_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_last_logged_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_last_logged_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_user_last_returned_from_any_flow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_user_last_returned_from_any_flow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_user_last_returned_from_any_flow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_user_last_returned_from_any_flow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-avatar-file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-avatar-file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-avatar-file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-avatar-file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_latest_patron_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_latest_patron_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_latest_patron_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_latest_patron_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_latest_patron_info_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_latest_patron_info_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_latest_patron_info_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_latest_patron_info_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon_user_details_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon_user_details_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon_user_details_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon_user_details_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'patreon-wordpress-advanced-options-toggle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'patreon-wordpress-advanced-options-toggle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'patreon-wordpress-advanced-options-toggle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'patreon-wordpress-advanced-options-toggle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_lastname'"
