-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mran_all_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mran_term_template', 'acwp_term_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('mran_term_template', 'acwp_term_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('mran_term_template', 'acwp_term_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mran_term_template', 'acwp_term_style');

