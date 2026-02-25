-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('display-on-free', 'display-on-connect', 'display-on-invalid', 'show-www', 'show-whois-output', 'before-whois-output', 'after-whois-output');

