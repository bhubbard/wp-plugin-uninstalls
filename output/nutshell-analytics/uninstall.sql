-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nutshell_instance_id', 'nutshell_auth_token', 'nutshell_domain', 'nutshell_subdomain', 'nutshell_root_domain', 'nutshell_tld', 'mcfx_integrations', 'mcfx_script_active', 'custom_mcfx_config', 'mcfx_id', 'nutshell_protocol');

