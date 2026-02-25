-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('polylang', 'gcccn_open_new_tab', 'gcccn_cookie_policy_url_type', 'gcccn_url_cookie_policy_link', 'gcccn_url_cookie_policy_option', 'gcccn_policy_link_text', 'gcccn_main_message', 'gcccn_dismiss_button_text', 'gcccn_layout_configuration', 'gcccn_discourage_cookie_consent', 'gcccn_cookie_expiry_duration', 'gcccn_popup_hide_pages');
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_main_message_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_policy_link_text_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_dismiss_button_text_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_cookie_policy_url_type_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_url_cookie_policy_link_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_open_new_tab_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_cookie_expiry_duration_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_popup_hide_pages_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_layout_configuration_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_url_cookie_policy_option_%';
DELETE FROM wp_options WHERE option_name LIKE 'gcccn_discourage_cookie_consent_%';

