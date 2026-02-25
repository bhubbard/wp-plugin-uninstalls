-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spec_comment_dbv');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_live';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_live';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_live';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_live';

