-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_cpt_support', 'windzfare_installed', 'windzfare_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_windzfare', '_windzfare_funding_goal', '_windzfare_duration_start', '_windzfare_duration_end', '_windzfare_funding_video', '_windzfare_campaign_end_method', '_windzfare_country', '_windzfare_location', '_windzfare_primary_color', '_sale_price', '_price', 'repeatable_donation_level_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_windzfare', '_windzfare_funding_goal', '_windzfare_duration_start', '_windzfare_duration_end', '_windzfare_funding_video', '_windzfare_campaign_end_method', '_windzfare_country', '_windzfare_location', '_windzfare_primary_color', '_sale_price', '_price', 'repeatable_donation_level_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_windzfare', '_windzfare_funding_goal', '_windzfare_duration_start', '_windzfare_duration_end', '_windzfare_funding_video', '_windzfare_campaign_end_method', '_windzfare_country', '_windzfare_location', '_windzfare_primary_color', '_sale_price', '_price', 'repeatable_donation_level_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_windzfare', '_windzfare_funding_goal', '_windzfare_duration_start', '_windzfare_duration_end', '_windzfare_funding_video', '_windzfare_campaign_end_method', '_windzfare_country', '_windzfare_location', '_windzfare_primary_color', '_sale_price', '_price', 'repeatable_donation_level_fields');

