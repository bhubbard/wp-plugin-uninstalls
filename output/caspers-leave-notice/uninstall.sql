-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpln_content_settings', 'cpln_other_settings', 'cpln_exclusions', 'cpln_styling_settings');

