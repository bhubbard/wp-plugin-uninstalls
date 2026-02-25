-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('public_token_field', 'signal_zen_plugin_do_activation_redirect', 'name_form_to', 'name_form_subject');

