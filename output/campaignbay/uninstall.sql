-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_num_decimals', 'campaignbay_calender_campaigns', 'campaignbay_active_campaigns', 'campaignbay_scheduled_campaigns');
DELETE FROM wp_options WHERE option_name LIKE '%_log_cleanup_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_campaignbay_onboarding_first_campaign');
DELETE FROM wp_usermeta WHERE meta_key IN ('_campaignbay_onboarding_first_campaign');
DELETE FROM wp_termmeta WHERE meta_key IN ('_campaignbay_onboarding_first_campaign');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_campaignbay_onboarding_first_campaign');

