-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('inm_la_title_url', 'inm_la_new');
DELETE FROM wp_usermeta WHERE meta_key IN ('inm_la_title_url', 'inm_la_new');
DELETE FROM wp_termmeta WHERE meta_key IN ('inm_la_title_url', 'inm_la_new');
DELETE FROM wp_commentmeta WHERE meta_key IN ('inm_la_title_url', 'inm_la_new');

