-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nucutaProtectSite', 'nucutaEditor', 'nucutaAuthor', 'nucutaContributor', 'nucutaSubscriber', 'nucutaCustomMessage', 'nucuta_pp_url', 'nucuta_password', 'nucuta_password_state');

