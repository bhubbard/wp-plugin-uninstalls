-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pro_pic', 'address', 'atbdp_phone', 'atbdp_facebook', 'atbdp_twitter', 'atbdp_linkedin', 'atbdp_youtube', '_listing_img', '_listing_prv_img', '_price', '_price_range', '_atbd_listing_pricing');
DELETE FROM wp_usermeta WHERE meta_key IN ('pro_pic', 'address', 'atbdp_phone', 'atbdp_facebook', 'atbdp_twitter', 'atbdp_linkedin', 'atbdp_youtube', '_listing_img', '_listing_prv_img', '_price', '_price_range', '_atbd_listing_pricing');
DELETE FROM wp_termmeta WHERE meta_key IN ('pro_pic', 'address', 'atbdp_phone', 'atbdp_facebook', 'atbdp_twitter', 'atbdp_linkedin', 'atbdp_youtube', '_listing_img', '_listing_prv_img', '_price', '_price_range', '_atbd_listing_pricing');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pro_pic', 'address', 'atbdp_phone', 'atbdp_facebook', 'atbdp_twitter', 'atbdp_linkedin', 'atbdp_youtube', '_listing_img', '_listing_prv_img', '_price', '_price_range', '_atbd_listing_pricing');

