-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ranksavant-cache-status', 'ranksavant-key', 'ranksavant-verify-status', 'ranksavant-verify-curl-body', 'ranksavant-containers');
DELETE FROM wp_options WHERE option_name LIKE 'ranksavant_container_%';

