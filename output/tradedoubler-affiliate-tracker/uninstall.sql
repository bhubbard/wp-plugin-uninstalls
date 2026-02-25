-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tradedoubler_credentials', 'tradedoubler_org_ID', 'tradedoubler_program_ID', 'tradedoubler_event_ID', 'tradedoubler_vat_commision', 'tradedoubler_shipping_commision', 'activated_codes_tradedoubler', 'tradedoubler_last_time_feed_update', 'tradedoubler_segment_ID', 'tradedoubler_feeds', 'last_hubspot_update', 'user_token_tradedoublerAPI', 'token_res_tradedoublerAPI', 'product_feeds_tradedoublerAPI', 'program_name_tradedoublerAPI');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('usage_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('usage_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('usage_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('usage_count');

