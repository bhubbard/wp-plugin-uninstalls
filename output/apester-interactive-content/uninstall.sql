-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apester-tokens-sent', 'tokens-publish-option-updated', 'qmerce-settings-admin', 'qmerce-user-id');

