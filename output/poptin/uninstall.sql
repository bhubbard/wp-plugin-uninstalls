-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('poptin_id', 'poptin_marketplace_token', 'poptin_user_id', 'poptin_marketplace_email_id', 'poptin_plugin_redirection');
DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box';
DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after';

