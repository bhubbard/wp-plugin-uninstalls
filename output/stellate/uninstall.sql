-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stellate_service_name', 'stellate_purging_token', 'stellate_soft_purge');

