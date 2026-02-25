-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordgrd_post_types', 'wordgrd_rules', 'wordgrd_do_activation_redirect', 'wordgrd_rule_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wg_alts', '_wg_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wg_alts', '_wg_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wg_alts', '_wg_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wg_alts', '_wg_note');

