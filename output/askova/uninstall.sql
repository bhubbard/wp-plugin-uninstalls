-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpfaqcb_settings', 'wpfaqcb_admin_lang', 'wpfaqcb_activation_redirect');

