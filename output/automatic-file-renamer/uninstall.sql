-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AFR_prefixe', 'AFR_suffixe', 'AFR_activation', 'AFR_redirection', 'AFR_Ou_Rediriger', 'AFR_roles_config');

