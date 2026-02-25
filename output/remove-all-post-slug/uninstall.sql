-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('asoft_permalink_customtype_suffix', '_transient_pll_languages_list');

