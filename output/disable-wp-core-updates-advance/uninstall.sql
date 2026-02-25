-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DWCUA_activated_on', 'DWCUA_deactivated_on');

