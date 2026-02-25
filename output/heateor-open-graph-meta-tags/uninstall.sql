-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('heateor_ogmt', 'heateor_ogmt_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_heateor_ogmt_meta', 'heateor_ogmt_author_facebook', 'heateor_ogmt_author_googleplus', 'heateor_ogmt_author_twitter');
DELETE FROM wp_usermeta WHERE meta_key IN ('_heateor_ogmt_meta', 'heateor_ogmt_author_facebook', 'heateor_ogmt_author_googleplus', 'heateor_ogmt_author_twitter');
DELETE FROM wp_termmeta WHERE meta_key IN ('_heateor_ogmt_meta', 'heateor_ogmt_author_facebook', 'heateor_ogmt_author_googleplus', 'heateor_ogmt_author_twitter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_heateor_ogmt_meta', 'heateor_ogmt_author_facebook', 'heateor_ogmt_author_googleplus', 'heateor_ogmt_author_twitter');

