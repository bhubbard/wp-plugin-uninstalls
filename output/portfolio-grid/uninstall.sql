-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('portfolio_tags_settings', 'portfolio_images_settings', 'portfolio_layout_settings', 'portfolio_encrypt_images');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('portfolio_post_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('portfolio_post_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('portfolio_post_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('portfolio_post_meta');

