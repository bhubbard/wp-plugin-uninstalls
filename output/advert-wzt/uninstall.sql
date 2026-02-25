-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advert_log', 'advert_guanggao', 'advert_db_version', 'advert_is_mianze', 'advert_wzt_token1', 'advert_wzt_token2', 'advert_wzt_token3', 'advert_tongji', 'advert_level');

