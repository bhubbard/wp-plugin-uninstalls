-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sta_npc_has_ecc', 'sta_npc_ecc_notif', 'sta_npc_version', 'sta_npc_admin_options_name', 'sta_npc_options', 'sta_npc_activation');

