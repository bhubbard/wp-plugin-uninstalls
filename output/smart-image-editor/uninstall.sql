-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sir_default_width', 'sir_default_height', 'sir_default_mode', 'sir_default_quality', 'sir_output_format', 'sir_filename_suffix');

