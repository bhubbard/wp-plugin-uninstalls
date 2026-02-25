-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_threshold';
DELETE FROM wp_options WHERE option_name LIKE '%_notices';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_moderated';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_moderated';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_moderated';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_moderated';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_reported';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_reported';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_reported';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_reported';

