-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ed_reshfl_show_activation_notice', 'ed_reshfl_db_version', 'ed_reshfl_db_schema');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('term_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('term_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('term_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('term_order');

