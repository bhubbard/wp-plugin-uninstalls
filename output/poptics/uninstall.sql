-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poptics_onboard_settings', 'poptics_onboard_details', 'poptics_settings', 'woocommerce_currency_pos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pt_ab_testing_campaigns');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pt_ab_testing_campaigns');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pt_ab_testing_campaigns');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pt_ab_testing_campaigns');

