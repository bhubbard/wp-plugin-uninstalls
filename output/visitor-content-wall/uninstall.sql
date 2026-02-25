-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vcw-bgcolor', 'vcw-txtcolor', 'vcw-msg', 'vcw-animation-type', 'vcw-bgc', 'vcw_success');

