-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rdtcp_enable', 'rdtcp_redirect_type', 'rdtcp_custom_page');

