-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ld_chosen_cats', 'ld_chosen_pages', 'ld_use_pages', 'ld_use_posts', 'ld_code_code', 'ld_code_use_default_css');

