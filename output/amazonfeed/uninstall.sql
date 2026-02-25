-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amazonFeedOptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_amazonfeed_keywords', '_amazonfeed_disabled', '_amazonfeed_sortby');
DELETE FROM wp_usermeta WHERE meta_key IN ('_amazonfeed_keywords', '_amazonfeed_disabled', '_amazonfeed_sortby');
DELETE FROM wp_termmeta WHERE meta_key IN ('_amazonfeed_keywords', '_amazonfeed_disabled', '_amazonfeed_sortby');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_amazonfeed_keywords', '_amazonfeed_disabled', '_amazonfeed_sortby');

