-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcp_exclude_pages', 'wpcp_disable_for_regusers');

