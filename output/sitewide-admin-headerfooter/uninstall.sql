-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shf_admin_footer_content', 'shf_admin_header_content', 'shf_footer_content', 'shf_header_content', 'shf_add_to_admin_footer');

