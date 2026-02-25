-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gam_secret_iv', 'gam_web_client_secret', 'gam_web_client_id', 'gam_redirect_uri', 'gam_ads_ad_manager_and_ad_exchange_tokens', 'gam_ads_ad_manager_and_ad_exchange_networks', 'gam_ads_ad_manager_and_ad_exchange_network_code', 'gamadsmbai_lbl_credit', 'gamadsmbai_lbl_advertisement', 'save_path', 'gam_using_default_config', 'gamadsmbai_license_key', 'gamadsmbai_license_token', 'gamadsmbai_activated_at', 'gamadsmbai_expires_at', 'gamadsmbai_license_plan', 'gamadsmbai_license_status', 'gamadsmbai_review_dismissed');
DELETE FROM wp_options WHERE option_name LIKE '%_adunit';

