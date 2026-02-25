-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('the_bootstrap_themes_companion_do_activation_redirect', 'txt_image_url', 'image_link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tbtc_facebook_link', 'tbtc_instagram_link', 'tbtc_twitter_link', 'tbtc_linkedIn_link', 'tbtc_designation', 'tbtc_cta_button', 'tbtc_cta_link', 'tbtc_actual_price', 'tbtc_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('tbtc_facebook_link', 'tbtc_instagram_link', 'tbtc_twitter_link', 'tbtc_linkedIn_link', 'tbtc_designation', 'tbtc_cta_button', 'tbtc_cta_link', 'tbtc_actual_price', 'tbtc_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('tbtc_facebook_link', 'tbtc_instagram_link', 'tbtc_twitter_link', 'tbtc_linkedIn_link', 'tbtc_designation', 'tbtc_cta_button', 'tbtc_cta_link', 'tbtc_actual_price', 'tbtc_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tbtc_facebook_link', 'tbtc_instagram_link', 'tbtc_twitter_link', 'tbtc_linkedIn_link', 'tbtc_designation', 'tbtc_cta_button', 'tbtc_cta_link', 'tbtc_actual_price', 'tbtc_sale_price');

