-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snoobianalyticsplugin_type', 'snoobianalyticsplugin_partner_id', 'snoobianalyticsplugin_snoobi_id', 'snoobianalyticsplugin_anchors', 'snoobianalyticsplugin_cookies', 'snoobianalyticsplugin_location');

