-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ultimo_bot_credentials', 'ultimo_bots_snippet', 'ultimo_bots_do_redirect');

