-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiinlito_max_keywords', 'aiinlito_enable_caching', 'aiinlito_db_version', 'aiinlito_allowed_post_types');
DELETE FROM wp_options WHERE option_name LIKE 'aiinlito_%';

