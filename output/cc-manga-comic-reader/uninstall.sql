-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cs-framework-transient', 'cs-metabox-transient', 'cs-taxonomy-transient');
DELETE FROM wp_options WHERE option_name LIKE 'cs_term_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manga_details', '_manga_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manga_details', '_manga_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manga_details', '_manga_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manga_details', '_manga_id');

