-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nevillex-instagram-settings', 'nevillex_instagram_is_configured');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nevillex_title_design_output');
DELETE FROM wp_usermeta WHERE meta_key IN ('nevillex_title_design_output');
DELETE FROM wp_termmeta WHERE meta_key IN ('nevillex_title_design_output');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nevillex_title_design_output');

