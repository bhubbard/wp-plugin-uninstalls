-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('f-social', 't-social', 'g-social', 'y-social', 'googleplus-button', 'home_title', 'meta_settings', 'canonical', 'author', 'publisher', 'ga', 'google-verification', 'bing-verification', 'home_desc', 'robots', 'xmlsitemap');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Title', 'Desc', 'tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('Title', 'Desc', 'tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('Title', 'Desc', 'tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Title', 'Desc', 'tags');

