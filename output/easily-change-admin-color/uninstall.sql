-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cam_WhatToColor');
DELETE FROM wp_options WHERE option_name LIKE 'cam_%';
DELETE FROM wp_options WHERE option_name LIKE 'cam_code_%';

