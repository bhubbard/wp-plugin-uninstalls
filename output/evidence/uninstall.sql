-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ev_protected_pages', 'evidence_script', 'ev_allowed_devices', 'ev_activation_redirect');

