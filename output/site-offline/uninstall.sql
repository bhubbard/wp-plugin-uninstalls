-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sahu_so_contact', 'sahu_so_countdown', 'sahu_so_dashboard', 'sahu_so_design', 'sahu_so_seo', 'sahu_so_social', 'sahu_siteoff_line_review');

