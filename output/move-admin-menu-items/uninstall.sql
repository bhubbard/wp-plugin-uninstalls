-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stb_mami_settings', 'stb_mami_example_transient_for_activation_message');

