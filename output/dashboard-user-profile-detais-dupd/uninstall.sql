-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dup1', 'dup2', 'dup3', 'dup4', 'dup5', 'link', 'title');

