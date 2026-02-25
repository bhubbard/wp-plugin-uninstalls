-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_ga_send_actions', 'wpcf7', 'cf7-ga-180-notice-dismissed', 'cf7-ga-186-notice-dismissed', 'cf7_ga_form_ids');

