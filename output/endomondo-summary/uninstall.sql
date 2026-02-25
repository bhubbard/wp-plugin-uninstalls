-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('endomondo-summary_endoid', 'endomondo-summary_method', 'endomondo-summary_cssloc');

