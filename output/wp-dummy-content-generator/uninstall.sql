-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_dummy_content_generator_post', 'wp_dummy_content_generator_attachment', '_visibility', '_price', '_regular_price', '_sale_price', 'wp_dummy_content_generator_user', 'first_name', 'last_name', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_dummy_content_generator_post', 'wp_dummy_content_generator_attachment', '_visibility', '_price', '_regular_price', '_sale_price', 'wp_dummy_content_generator_user', 'first_name', 'last_name', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_dummy_content_generator_post', 'wp_dummy_content_generator_attachment', '_visibility', '_price', '_regular_price', '_sale_price', 'wp_dummy_content_generator_user', 'first_name', 'last_name', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_dummy_content_generator_post', 'wp_dummy_content_generator_attachment', '_visibility', '_price', '_regular_price', '_sale_price', 'wp_dummy_content_generator_user', 'first_name', 'last_name', 'description');

