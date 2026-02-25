-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afterRead_secure', 'afterRead_suggestion_name', 'afterRead_custom_html', 'afterRead_option_ichi', 'afterRead_option_ni', 'afterRead_option_san', 'afterRead_option_inchi');

