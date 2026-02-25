-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ppct_register_site', 'ppct_chat_active', 'ppct_reg_email', 'ppct_private_key');

