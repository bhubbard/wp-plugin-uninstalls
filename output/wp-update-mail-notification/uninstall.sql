-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awun-is-active', 'awun-mail', 'awun-mail-headline', 'awun-mail-subtitle', 'awun-small-notice', 'awun-logo', 'awun-mail-color', 'awun-mail-content-header', 'awun-mail-content-footer', 'awun-mail-subject', 'awun-import-text', 'awun-schedule', 'awun-export-text', 'awun-inport-text', 'awun_last_sended', 'update_plugins');

