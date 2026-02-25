-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('read_more_link_text', 'read_more_link_br');
DELETE FROM wp_options WHERE option_name LIKE 'read_more_link_%';

