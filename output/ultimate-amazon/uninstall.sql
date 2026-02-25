-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sis_carousel_settings', 'asinp_aws_public_key', 'asinp_aws_private_key', 'asinp_rnd_amazon_data', 'asinp_aws_associate_tag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('amazon_affiliate_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('amazon_affiliate_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('amazon_affiliate_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('amazon_affiliate_url');

