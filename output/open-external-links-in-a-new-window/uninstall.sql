-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('external_links_in_new_windows_force', 'external_links_in_new_windows_ignore');

