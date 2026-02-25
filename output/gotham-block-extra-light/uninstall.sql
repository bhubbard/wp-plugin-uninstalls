-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gothamadblock_option_premium_tools', 'gothamadblock_option_fury', 'gothamadblock_option_messageperso_title', 'gothamadblock_option_messageperso', 'gothamadblock_option_messageperso_button', 'gothamadblock_option_cookietime', 'gothamadblock_option_powered', 'gothamadblock_option_apijeton');

