-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccbSimpleTwitter-username', 'ccbSimpleTwitter-maxTwitt', 'ccbSimpleTwitter-replaceKey', 'ccbSimpleTwitter-replaceId', 'ccbSimpleTwitter-onTime', 'ccbSimpleTwitter-offTime', 'ccbSimpleTwitter-fadeTime');
DELETE FROM wp_options WHERE option_name LIKE 'ccbSimpleTwitter-%';

