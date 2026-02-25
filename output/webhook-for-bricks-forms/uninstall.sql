-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rup_bhfbf_webhooks', 'rup_bhfbf_debug');

