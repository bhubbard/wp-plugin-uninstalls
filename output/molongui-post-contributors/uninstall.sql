-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('molongui_contributors_options');
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%-activation-redirect';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'leading-phrase', '_default_contributor_role');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'leading-phrase', '_default_contributor_role');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'leading-phrase', '_default_contributor_role');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'leading-phrase', '_default_contributor_role');

