-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('featured_background_supported_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('featured_background_options', 'featured-background');
DELETE FROM wp_usermeta WHERE meta_key IN ('featured_background_options', 'featured-background');
DELETE FROM wp_termmeta WHERE meta_key IN ('featured_background_options', 'featured-background');
DELETE FROM wp_commentmeta WHERE meta_key IN ('featured_background_options', 'featured-background');

