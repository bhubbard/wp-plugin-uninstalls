-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('klc_welcome', 'klc_widget_options', 'klc_activation_redirect_transient');

