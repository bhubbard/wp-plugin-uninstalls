-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rfi_minimum_size', 'rfi_post_types', 'rfi_enforcement_start');

