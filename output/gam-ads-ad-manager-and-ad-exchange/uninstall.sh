#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gam_secret_iv'
wp option delete 'gam_web_client_secret'
wp option delete 'gam_web_client_id'
wp option delete 'gam_redirect_uri'
wp option delete 'gam_ads_ad_manager_and_ad_exchange_tokens'
wp option delete 'gam_ads_ad_manager_and_ad_exchange_networks'
wp option delete 'gam_ads_ad_manager_and_ad_exchange_network_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_adunit'"
wp option delete 'gamadsmbai_lbl_credit'
wp option delete 'gamadsmbai_lbl_advertisement'
wp option delete 'save_path'
wp option delete 'gam_using_default_config'
wp option delete 'gamadsmbai_license_key'
wp option delete 'gamadsmbai_license_token'
wp option delete 'gamadsmbai_activated_at'
wp option delete 'gamadsmbai_expires_at'
wp option delete 'gamadsmbai_license_plan'
wp option delete 'gamadsmbai_license_status'
wp option delete 'gamadsmbai_review_dismissed'

# Clear Cron Jobs
wp cron event delete 'gam_ads_ad_manager_and_ad_exchange_refresh_tokens_event'

