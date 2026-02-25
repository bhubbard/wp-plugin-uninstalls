-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rwctm_global_options', 'rwctm_activation_time', 'rwctm_teamLists', 'rwctm_spare_me', 'rwctm_teamIDs', 'rwctm_memberCount', 'rwctm_IDsSerial', 'external_updates-rwc-team-members');
DELETE FROM wp_options WHERE option_name LIKE '%_activity';
DELETE FROM wp_options WHERE option_name LIKE '%_option';

