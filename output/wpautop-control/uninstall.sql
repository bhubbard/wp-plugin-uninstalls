-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpautop_by_default', 'wpautop_on_by_default');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpautop');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpautop');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpautop');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpautop');

