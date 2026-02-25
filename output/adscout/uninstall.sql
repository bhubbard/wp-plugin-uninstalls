-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('as_integration_options', 'adscout_integration_options', 'adscout_api_token', 'adscout_partner_domain_hex', 'as_feed_last_updated', 'adscout_hash');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ac_coupon_type', 'ac_coupon_source');
DELETE FROM wp_usermeta WHERE meta_key IN ('ac_coupon_type', 'ac_coupon_source');
DELETE FROM wp_termmeta WHERE meta_key IN ('ac_coupon_type', 'ac_coupon_source');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ac_coupon_type', 'ac_coupon_source');

