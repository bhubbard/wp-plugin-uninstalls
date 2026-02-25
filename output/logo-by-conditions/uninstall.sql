-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_changer', 'logo_selector', 'default_logo');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('logo', 'show_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('logo', 'show_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('logo', 'show_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('logo', 'show_type');

