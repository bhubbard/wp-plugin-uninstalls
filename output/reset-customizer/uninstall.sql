-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reset_customizer');
DELETE FROM wp_options WHERE option_name LIKE '%_purchased';
DELETE FROM wp_options WHERE option_name LIKE '%_donated';
DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%';
DELETE FROM wp_options WHERE option_name LIKE '%_bak';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-notice-dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-notice-dismissed';

