-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ald_login_page_db_version', 'ald_login_page_logo', 'ald_login_page_logo_width', 'ald_login_page_logo_height', 'ald_login_page_logo_padding', 'ald_login_page_bgcolor', 'ald_login_page_fontcolor');

