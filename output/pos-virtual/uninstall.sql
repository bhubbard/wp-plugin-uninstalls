-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user_posvirtual', 'password_posvirtual', 'token_posvirtual', 'jwt_posvirtual', 'mid_posvirtual', 'environment_dev_cyb_posvirtual', 'vc_json_posvirtual', 'name_enterprise_posvirtual', 'currency_posvirtual', 'activation_date_posvirtual', 'creation_date_posvirtual');

