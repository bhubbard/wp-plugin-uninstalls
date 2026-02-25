-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spamscrubber_exclude_ids', 'spamscrubber_honeypot_enabled', 'spamscrubber_honeypot_field');

