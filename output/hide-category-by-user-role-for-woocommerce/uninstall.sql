-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tswchc_rules', 'tswchc_redirect_url', 'tswchc_redirect_mode', 'tswchc_display_custom_message', 'tswchc_message_wrapper', 'tswchc_message_styles', 'tswchc_settings', 'tswchc_version', 'wc_term_counts');

