-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7vp_enable_phone', 'cf7vp_enable_email', 'cf7vp_enable_urlblock', 'cf7vp_enable_urlblock_all', 'cf7vp_phone_digits', 'cf7vp_phone_message', 'cf7vp_email_message', 'cf7vp_url_message');

