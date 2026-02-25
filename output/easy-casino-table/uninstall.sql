-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ect_settings_input_visitbutton', 'ect_settings_input_tclink', 'ect_settings_input_readmore');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ect-tc-link', 'ect-affiliate-link', 'ect-column2', 'ect-column2-follow', 'ect-column3', 'ect-outgoing-slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('ect-tc-link', 'ect-affiliate-link', 'ect-column2', 'ect-column2-follow', 'ect-column3', 'ect-outgoing-slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('ect-tc-link', 'ect-affiliate-link', 'ect-column2', 'ect-column2-follow', 'ect-column3', 'ect-outgoing-slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ect-tc-link', 'ect-affiliate-link', 'ect-column2', 'ect-column2-follow', 'ect-column3', 'ect-outgoing-slug');

