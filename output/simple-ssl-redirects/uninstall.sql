-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssslr_method', 'ssslr_hsts', 'ssslr_canonical_domain', 'ssslr_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('admin_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('admin_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('admin_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('admin_color');

