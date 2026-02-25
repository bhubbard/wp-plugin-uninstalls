-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yektanetaffiliate_version', 'yektanetaffiliate_db_version', 'yektanetaffiliate_settings', 'redirect_after_activation_option', 'YEKTANETAFFILIATE_DB_VERSION', 'YEKTANETAFFILIATE_VERSION');

