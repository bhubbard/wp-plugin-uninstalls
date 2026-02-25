-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dojo_dummy_page', 'dojo_options');
DELETE FROM wp_options WHERE option_name LIKE '%_revision';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone');

