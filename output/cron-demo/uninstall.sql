-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dprx_crondemo_mail', 'dprx_crondemo_inseconds', 'dprx_crondemo_recc', 'dprx_crondemo_triggercount');

