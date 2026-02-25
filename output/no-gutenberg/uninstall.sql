-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayudawp_no_gutenberg_activated', 'ayudawp_fse_theme_activated_warning');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ayudawp_no_gutenberg_fse_warning_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('ayudawp_no_gutenberg_fse_warning_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('ayudawp_no_gutenberg_fse_warning_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ayudawp_no_gutenberg_fse_warning_dismissed');

