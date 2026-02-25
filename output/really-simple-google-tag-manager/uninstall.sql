-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_tag_manager_id', 'simple_googletag_diagnostic_data_notice', 'simple_googletag_diagnostic_data_agreed');

