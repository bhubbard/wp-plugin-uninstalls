-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpeft_types', 'wpeft_custom_types', 'wpeft_no_strict', 'wpeft_no_wp', 'wpeft_gf_hack');

