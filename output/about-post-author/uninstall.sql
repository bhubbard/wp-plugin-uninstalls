-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('about-post-author-background-color', 'about-post-author-text-color', 'about-post-author-font-size', 'about-post-author-font-family', 'about-post-author-border-style', 'about-post-author-padding');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('facebook', 'twitter', 'linkedin', 'instagram');
DELETE FROM wp_usermeta WHERE meta_key IN ('facebook', 'twitter', 'linkedin', 'instagram');
DELETE FROM wp_termmeta WHERE meta_key IN ('facebook', 'twitter', 'linkedin', 'instagram');
DELETE FROM wp_commentmeta WHERE meta_key IN ('facebook', 'twitter', 'linkedin', 'instagram');

