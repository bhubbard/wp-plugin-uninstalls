-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7s-submissions_version', 'cf7s-submissions_install_time', 'links_updated_date_format');
DELETE FROM wp_options WHERE option_name LIKE 'cx-plugin-info-%';

