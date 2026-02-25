-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mind_disclaimer_sidewide', 'mind_disclaimer_text', 'mind_disclaimer_title', 'mind_accept_text', 'mind_disclaimer_show_once');

