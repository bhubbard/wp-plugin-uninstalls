-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postscript', 'postscript_scripts_reg', 'postscript_styles_reg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('postscript_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('postscript_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('postscript_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('postscript_meta');

