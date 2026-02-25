-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta_revision_test', 'meta_multiples_test', 'foo');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta_revision_test', 'meta_multiples_test', 'foo');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta_revision_test', 'meta_multiples_test', 'foo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta_revision_test', 'meta_multiples_test', 'foo');

