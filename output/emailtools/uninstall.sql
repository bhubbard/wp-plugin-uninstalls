-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emailtools', 'emt_terms_and_conditions', 'required_wc', 'emt_required_wc');

