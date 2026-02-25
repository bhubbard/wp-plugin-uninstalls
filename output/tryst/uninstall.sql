-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tryst_option', 'tryst');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('date', 'time', 'tryst_available_ops', 'location');
DELETE FROM wp_usermeta WHERE meta_key IN ('date', 'time', 'tryst_available_ops', 'location');
DELETE FROM wp_termmeta WHERE meta_key IN ('date', 'time', 'tryst_available_ops', 'location');
DELETE FROM wp_commentmeta WHERE meta_key IN ('date', 'time', 'tryst_available_ops', 'location');

