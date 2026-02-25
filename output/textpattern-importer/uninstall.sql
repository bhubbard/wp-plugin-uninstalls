-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('txpuser', 'txppass', 'txpname', 'txphost', 'tpre', 'txpcat2wpcat', 'txpid2wpid', 'txpposts2wpposts', 'txpcm2wpcm', 'txplinks2wplinks', 'txp_cats', 'txp_links');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_user_level', 'rich_editing');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_user_level', 'rich_editing');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_user_level', 'rich_editing');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_user_level', 'rich_editing');

