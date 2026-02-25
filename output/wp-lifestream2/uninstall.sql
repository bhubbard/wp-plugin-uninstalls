-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lifestream_options');
DELETE FROM wp_options WHERE option_name LIKE 'lifestream_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_lifestream_digest_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_lifestream_digest_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_lifestream_digest_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_lifestream_digest_date');

