-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('draugiemsay_apikey', 'cligsapi', 'draugiemsay_pretext', 'draugiemsay_profile', 'draugiemsay_authcode', 'draugiemsay_email');

