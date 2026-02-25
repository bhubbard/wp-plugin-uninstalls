-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('message', 'text-color', 'background-color', 'padding', 'border-radius', 'border-width', 'border-style', 'copyrighte', 'melibu-plugin-typing-version', 'melibu-plugin-typing-db-version', 'copyright', 'melibu-plugin-typing-logo-get', 'melibu-plugin-typing-page-activated');

