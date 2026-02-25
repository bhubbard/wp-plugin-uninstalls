-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nuconomy_projecttoken', 'nuconomy_authcode', 'nuconomy_step', 'nuconomy_project_server_token', 'nuconomy_completetoken', 'nuconomy_completemail');

