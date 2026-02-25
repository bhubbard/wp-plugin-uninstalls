-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sitechat_show_activation_notice', 'sitechat_link_code', 'sitechat_enable_ecommerce');

