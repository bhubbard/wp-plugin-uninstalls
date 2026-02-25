-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('options_meta_title', 'options_meta_description');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('og_type', 'meta_og_title', 'meta_og_description', 'meta_og_image', 'meta_og_url', 'meta_tw_title', 'meta_tw_description', 'meta_tw_image', 'meta_title', 'meta_description', 'meta_canonical');
DELETE FROM wp_usermeta WHERE meta_key IN ('og_type', 'meta_og_title', 'meta_og_description', 'meta_og_image', 'meta_og_url', 'meta_tw_title', 'meta_tw_description', 'meta_tw_image', 'meta_title', 'meta_description', 'meta_canonical');
DELETE FROM wp_termmeta WHERE meta_key IN ('og_type', 'meta_og_title', 'meta_og_description', 'meta_og_image', 'meta_og_url', 'meta_tw_title', 'meta_tw_description', 'meta_tw_image', 'meta_title', 'meta_description', 'meta_canonical');
DELETE FROM wp_commentmeta WHERE meta_key IN ('og_type', 'meta_og_title', 'meta_og_description', 'meta_og_image', 'meta_og_url', 'meta_tw_title', 'meta_tw_description', 'meta_tw_image', 'meta_title', 'meta_description', 'meta_canonical');

