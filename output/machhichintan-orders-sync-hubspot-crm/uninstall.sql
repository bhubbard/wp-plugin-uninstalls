-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hubspot_api_token', 'hubspot_deal_stage', 'hubspot_pipeline', 'store_deals_api_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hubspot_deal_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hubspot_deal_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hubspot_deal_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hubspot_deal_id');

