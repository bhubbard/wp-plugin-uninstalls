-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom_domains_rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE '%_permalink_structure';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_permalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('_permalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('_permalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_permalink');

