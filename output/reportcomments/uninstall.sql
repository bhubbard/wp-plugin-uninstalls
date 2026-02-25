-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_members_only';
DELETE FROM wp_options WHERE option_name LIKE '%_count';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reported';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reported';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reported';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reported';

