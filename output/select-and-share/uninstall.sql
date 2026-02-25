-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ss_selected_networks', 'ss_title_networks', 'ss_wordpress_text', 'ss_email_text', 'ss_stats');

