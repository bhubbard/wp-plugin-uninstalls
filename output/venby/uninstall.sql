-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ops_getcampaignsscripts_venby', 'ops_apikey_venby', 'ops_getcampaignids_venby');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('campaign_selected');
DELETE FROM wp_usermeta WHERE meta_key IN ('campaign_selected');
DELETE FROM wp_termmeta WHERE meta_key IN ('campaign_selected');
DELETE FROM wp_commentmeta WHERE meta_key IN ('campaign_selected');

