-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chc-textColor', 'chc-backgroundColor', 'chc-imgWidth', 'chc-imgHeight', 'chc-noiceLines', 'chc-noiceDots', 'chc-noiceColor');

