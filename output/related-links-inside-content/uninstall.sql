-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rlic-tareqanwar-releted-story-text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rlic_tareqanwar_post_link_one', 'rlic_tareqanwar_post_link_two', 'rlic_tareqanwar_post_link_three');
DELETE FROM wp_usermeta WHERE meta_key IN ('rlic_tareqanwar_post_link_one', 'rlic_tareqanwar_post_link_two', 'rlic_tareqanwar_post_link_three');
DELETE FROM wp_termmeta WHERE meta_key IN ('rlic_tareqanwar_post_link_one', 'rlic_tareqanwar_post_link_two', 'rlic_tareqanwar_post_link_three');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rlic_tareqanwar_post_link_one', 'rlic_tareqanwar_post_link_two', 'rlic_tareqanwar_post_link_three');

