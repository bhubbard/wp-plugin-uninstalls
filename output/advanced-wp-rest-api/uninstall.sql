-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awpr_user_login_api', 'awpr_post_api', 'awpr_user_api', 'awpr_product_api');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('picture');
DELETE FROM wp_usermeta WHERE meta_key IN ('picture');
DELETE FROM wp_termmeta WHERE meta_key IN ('picture');
DELETE FROM wp_commentmeta WHERE meta_key IN ('picture');

