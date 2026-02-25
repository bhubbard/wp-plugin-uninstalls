-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('promptcash_version', 'cashtippr_memcached_secret', 'promptcash_tables', 'promptcash_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('prompt_tip_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('prompt_tip_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('prompt_tip_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('prompt_tip_amount');

