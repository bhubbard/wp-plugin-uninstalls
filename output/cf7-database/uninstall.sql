-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7db_user_reviewed', 'cf7db_review_date');
DELETE FROM wp_options WHERE option_name LIKE 'cf7d_settings_nav_table%';
DELETE FROM wp_options WHERE option_name LIKE 'cf7d_settings_field_%';

