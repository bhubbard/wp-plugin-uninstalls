-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('droppcc-setting', 'droppcc-profile', 'droppcc-setting ', 'droppcc-profile ');

