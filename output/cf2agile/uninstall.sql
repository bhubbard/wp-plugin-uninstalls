-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf2agile__activecollab__org_name', 'cf2agile__activecollab__app_name', 'cf2agile__activecollab__username', 'cf2agile__activecollab__password', 'cf2agile__activecollab__self_url');

