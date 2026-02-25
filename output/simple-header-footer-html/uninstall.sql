-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('injection_head_start', 'injection_head_end', 'injection_footer_start', 'injection_footer_end');

