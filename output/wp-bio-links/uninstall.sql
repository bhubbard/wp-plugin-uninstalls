-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_bio_links_nickname_color', 'wp_bio_links_link_bg_color', 'wp_bio_links_link_border_color', 'wp_bio_links_link_text_color', 'wp_bio_links_thumbnail', 'wp_bio_links_credits');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_bio_links');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_bio_links');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_bio_links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_bio_links');

