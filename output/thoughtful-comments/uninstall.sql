-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thoughtful_comments');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fv_tc_moderated', 'children');
DELETE FROM wp_usermeta WHERE meta_key IN ('fv_tc_moderated', 'children');
DELETE FROM wp_termmeta WHERE meta_key IN ('fv_tc_moderated', 'children');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fv_tc_moderated', 'children');

