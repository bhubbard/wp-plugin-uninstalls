-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wvcl_head_hunter', 'wvcl_description', 'description_section');

