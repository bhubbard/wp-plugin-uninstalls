-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpCap_login', 'wpCap_register', 'wpCap_lost', 'wpCap_comments', 'wpCap_registered', 'wpCap_cf7_ax', 'wpCap_wpf_ax', 'wpCap_forminator_ax', 'wpCap_type', 'wpCap_letters', 'wpCap_no_chars', 'wpCap_image', 'wpCap_failBan', 'wpCap_Banned', 'wpCap_Ban_History', 'wpCap_restMenu');

